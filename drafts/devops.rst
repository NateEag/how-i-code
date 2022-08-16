Just keeping some notes as I read Google's SRE O'Reilly book. I have a physical
copy of it, but it can be found digitally here, along with two companion
volumes (one is a workbook, the other about security and reliability)
https://landing.google.com/sre/books/.

They may eventually evolve into a set of essays strongly inspired by (and
credited to) the aforementioned book. I guess we'll see.


Chapter 1 - What Does An SRE Actually Do?
=========================================

Monitoring systems should categorize their output into:

- Alerts, which tell humans "Intervene *fast* or there will be major
  consequences."

- Tickets, which tell humans "Intervene soon, but it doesn't have to be right
  now."

- Logging, which humans can ignore until they want to look it up. Think of it
  as generating reference material.

Obviously, those systems should actually generate alerts, tickets, and logs as
appropriate.

Change management systems (a.k.a. deployment systems) need to offer three
features to be reliable and robust:

- progressive rollout
- fast, reliable problem detection
- Safe, stable rollback (for when you do catch problems)


Chapter 2 - Production Env At Google
====================================

Useful reading for understanding the book, as it's written by Googlers about
Google, but little of general interest stood out to me.

I do like the usage of 'server' to mean "a backend service that listens and
responds on a network port" rather than "a particular piece of hardware".

In chapter 6 they define both "node" and "machine" as referring to "a single
running kernel, whether in the context of a physical computer, a VM, or a
container", and they point out that a single node may host multiple services
(which are more general than "servers", as I see it - a service is a long-lived
process, which in some cases might not listen on a port), whether related or
unrelated.

I do find that bit of terminology useful.


Chapter 3 - Embracing Risk
==========================

The classic war between ops and dev is that ops locks down the environment as
hard as possible, making it horribly painful to release software in a
well-meant attempt to reduce risk, while dev wants to push things out with wild
abandon, incurring risk for things like renaming a function that's only called
seven times throughout a codebase.

Google's resolution to this conflict is to observe (correctly) that 100%
reliability is nigh-impossible and is the wrong target for all but extreme
cases (pacemakers and rockets).

They also point out that even if you achieve 99.999% uptime, your users will
not perceive it as such due to other problems along the delivery chain - ISP
outages, their own hardware failures, and the like, will prevent them from
experiencing 99.999% uptime even if you achieve it.

"Uptime" is misleading, they point out - in distributed systems like theirs,
even major outages usually leave some of their systems responding properly, so
they can have 100% uptime in some sense in a time span when half of user
requests fail.

They propose request success rate as a better (though not perfect) measure of
reliability:

service reliability = number of successful requests / number of requests

(Note that the G Suite team proposes a better metric for reliability, windowed
user-uptime, in this post:
https://blog.acolyer.org/2020/02/26/meaningful-availability/ )

The obvious question is then "What is the right level of reliability?"

That, they argue, is a business decision, based on the importance of the
product to customers, how useful the product can be at various levels of
unreliability, and so on. TODO Flesh out the weasel words "and so on."

With that decision in hand, the team defines a reliability budget (e.g. 99.5%
request success rate this quarter). Dev can push new code as long as they
haven't violated the budget.

Once the error budget is spent, dev doesn't get to push new code until the next
budget period begins.

This strategy sounds like it works well for them, but it only works if ultimate
authority to control releases lies with the SRE team. At Google, IIRC from
other sources, SRE is allowed to stop supporting product teams that don't keep
the rules, and the highest level of management has backed SRE consistently.


Chapter 4 - Service Level Objectives
====================================

In many ways this is an extension of chapter 3.

It suggests that SLA is an overloaded term, and using different words for
several of its meanings improves clarity of mission and communication.

SLI - Service Level Indicator. A quantitative metric that rigorously describes
the level of service being provided by some aspect of the service. Availability
(a.k.a. request success rate in chapter 3), durability (percentage of stored
data that are successfully retrieved from the system), request latency, error
rate, and system throughput (in requests per second) are several examples of
standard SLIs. SLIs are usually considered in aggregate over some time window.

SLO - Service Level Objective. A value range the organization chooses to taret
for a given SLI; e.g. keeping system availability >= 99.5%, or 200 ms <=
request latency <= 1000 ms. SLOs should be published and advertised to users.
Google has had the comical problem of a service massively exceeding its SLOs,
so internal development teams made the dangerous assumption that it was
perfectly reliable. Their solution was to schedule sufficient downtime to stay
within their SLO's upper bound, so that other teams would stop writing code
that assumed perfect reliability.

SLA - Service Level Agreement. A legal contract defining the consequences for
failing to meet SLOs.

What SLIs you should collect is a business question, as touched on in
chapter 3. Don't define too many or you'll drown in trying to track them all.


Chapter 5 - Eliminating Toil
============================

Google is dedicated to automating operational work that doesn't require human
judgment, to ensure their operations team operates sustainably. They know
automatable work when they see it, and they have a word for it (toil), but they
don't have a concise, clear definition for it. They commit that any given SRE
will spend at most 50% of a quarter toiling.


Chapter 6 - Monitoring Distributed Systems
==========================================

Terms:

Monitoring - Collecting, analyzing, and displaying quantitative data about a
system in real time [I will argue near-real-time is smarter, especially if
you're not Google - real-time is hard to engineer and buys you what? An alert
one minute sooner?].

White-box monitoring - monitoring data from system internals.

Black-box monitoring - monitoring data from the system user's frame of
reference.

Dashboard - HUD with summary of service's core metrics (perhaps along with
other mission-critical data, like who's on call or how many open tickets there
are)

Alert - notification meant to be read and acted upon *immediately* by a human.



End Of SRE Notes
----------------

Beyond this point are things I've learned by the school of hard knocks and
research.


Devs Are Your Users
===================

If you are doing devops for a software product, then one of your user groups is
the software's development team.

Stay in close contact with them while you're working and use them to set your
priorities and solve the right problems.


Guerilla Monitoring
===================

The categorization of events into "Alerts", "Tickets", and "Logs" makes
complete sense to me.

How can you get that in place on a shoestring budget in a skeleton crew?
Because that's what most shops operate with, as they aren't Google.

If you can hack up some scripts that do basic sanity checks of your web
resources with standard automation tools (Selenium, curl, etc), you have
black-box monitoring tools. Use cron to run them regularly and tada! Make sure
you also set up some kind of CI for these tests so devs don't deploy changes
that break them without knowing. As Steve Yegge said, "QA and monitoring are
the same thing."

Webserver logs can be scanned regularly for anomalies - unusually high
percentage of 500s, unusually high traffic, etc. Same for app logs. You can use
syslog to aggregate your logs onto one server where the analysis jobs are run.

You can categorize the conditions these scripts detect as Alerts, Tickets, and
Logs.

- "Alerts" mean sending texts to the team members on pager duty. Most people
  have cell phones and most cell plans have an email address for all cell
  numbers that auto-converts to text messages. Have team members set a loud,
  crazy alert for the alert-sending email address and it should work. Every
  week when the rotation changes, just update the configured list of numbers
  (this is the weak point; easy to screw it up and keep anyone from getting
  notifications, so you should trigger a test one after the update to be sure
  everyone who should get it does.)

- "Tickets" are harder. Not sure what to do about them yet. Ideally your task
  tracker has an API so you generate new tasks for ominous-but-not-terrifying
  conditions and assign them to whoever's on pager duty. This would be hard
  when error logs are noisy, and there's also the duplicate ticket problem.

- "Logs" are, fortunately, easy, because they're logs. Whoever's on pager duty
  makes sure they're still flowing daily and other than that can just ignore
  them.


How To Process Logs
===================

Avery Pennamun has a persuasive essay on this idea. Reading between the lines,
it seems clear he's describing what his team at Google Fiber built, and that he
really misses it and wishes he could just install and configure it wherever he
goes. Alas.

Regardless, massively insightful and well worth rereading and further
pondering. Includes the striking insight that 5 TB of logs a day is actually
just ~80 MB/second and thus not a big deal, so long as you have mechanisms in
place to normalize burstiness. https://apenwarr.ca/log/20190216


Nix / Guix Look Awesome
=======================

I haven't actually used them for anything, but conceptually their model is
obviously a smarter way to manage third-party dependencies than anything like
Ansible / Chef / Salt / Puppet / etc.

While they're technologically superior and have some really desirable
properties (especially for long-lived setups), they probably aren't the right
choice on average for most projects. At the end of the day, software projects
mostly either go userless or wind up maintained. If they die, robust management
doesn't matter. If they're being maintained, you should be focused on the
maintainer, and in many contexts that will be someone who does not want to
learn a new way of managing software systems.

When you have good reason to think the advantages these systems give you are
what you need, then yes, use them.

Don't do it blindly out of technological zealotry, though.

This blog post did a nice job of introducing Nix concepts, I thought:
https://stephank.nl/p/2020-06-01-a-nix-primer-by-a-newcomer.html



Round-Robin DNS Load Balancing
==============================

Browsers will try all round-robined DNS A records til they find an IP address
that actually responds:

https://webmasters.stackexchange.com/questions/10927/using-multiple-a-records-for-my-domain-do-web-browsers-ever-try-more-than-one

This is not universal behavior or something you want to rely on blindly (if one
cluster is serving 500s, well, the connection is still valid so browsers will
happily keep hitting it, not all tools do this level of work themselves, etc).

Nonetheless - if you want distributed redundant systems for robustness against
datacenter outages, this is an easy way to get it. Set up clusters in different
datacenters and round-robin DNS to all the load balancers. Modern browsers
should just keep working pretty smoothly if a load balancer goes down.

Further, if something goes horribly wrong in one of the clusters, you can
remove the whole cluster from usage pretty smoothly by just taking the load
balancer offline. That only works for web apps, though, where you can rely on
browser behavior. For HTTP APIs, this isn't a viable answer, since you
shouldn't rely on the clients to implement this behavior (maybe you could
require it for clients to internal-only APIs, but if you're big enough to have
internal-only APIs you probably have better answers overall).

This should be especially useful when rolling out major changes and cutovers -
changes to DNS can take a while to propagate, but this browser behavior gives
you a way to mostly mitigate that.

Obviously staged rollouts by weighted round-robin and geographic
restrictions helps too, but the above is a handy way to do things.

Keep a replica master DB instance in a separate datacenter, get solid failover
in place, and you should be pretty robust against most disasters that can
befall you.


Notes On Hunting Irregular CPU Spikes
=====================================

On one (or more) of the problem machines, execute the following (making sure
you have plenty of drive space available, but you should):

```
$ screen
$ top -b > /home/username/top.log
$ <Ctrl-a> d
```

You now have a background process on the server, adding a top snapshot to
`/mnt/tmp/top.out` every two to four seconds, running indefinitely.

If load spikes to 100% CPU for more than three or four seconds, you should have
a record of what processes were responsible for how much of it when it does.

Be wary of its ability to eat through drive space. Maybe kill the job and
restart it every hour or two while you're capturing if there has not yet been a
spike. You could probably figure out how to ditch frames without useful
information (e.g., where overall load was below, say, 70%, which would be most
of them).

Since these machines can be killed arbitrarily, you'll want to save the output
elsewhere. regularly.

Somewhere, set up the following in a cron job to run every few minutes (aimed
at the appropriate machine):

```
rsync username@example.com:/home/username/top.log top.log
```

If the spikes are genuinely less than a few seconds, this won't catch it. I've
not yet had to hunt spikes that lasted only a second or two. I've barely had to
hunt spikes at all - I'm generally a dev, not an operator. I'm just interested
in everything about making software work well.

Per the above, I expect there are smarter ways to do this, but I don't know
what they are. I would be glad to learn them.


Documenting Server Roles
========================

If you're doing anything even vaguely like devops, you have scripts that define
the various roles your servers play.

Those should contain (or be able to generate) a high-level textual description
of the role's essential purpose and the main components it uses to do the job.

That summary should be wedged into /etc/motd.tail as part of your "apply role"
script (along with a link to the repo that the role is defined in and a big
"YOUR CHANGES WILL BE LOST" warning), so that anyone who logs into any server
is instantly oriented to roughly what it's used for.
