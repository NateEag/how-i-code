Just keeping some notes as I read Google's SRE O'Reilly book.

They may eventually evolve into a set of essays strongly inspired by the
aforementioned book. I guess we'll see.


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
hard as possible, making it horribly painful to release software to reduce
risk, while dev wants to push things out with wild abandon, taking on risk for
things like renaming a function that's only called seven times throughout a
codebase.

Google's resolution to this conflict is to observe (correctly) that 100%
reliability is nigh-impossible and is the wrong target for all but extreme
cases (pacemakers and rockets).

They also point out that even if you achieve 99.999% uptime, your users will
not perceive it as such due to other problems along the delivery chain - ISP
outages, their own hardware failures, and the like, will prevent them from
having an actual experience of 99.999% uptime.

"Uptime" is misleading, they point out - in distributed systems like theirs,
even major outages usually leave some of their systems responding properly, so
they can have 100% uptime in some sense in a time span when half of user
requests fail.

They propose request success rate as a better (though not perfect) measure of
reliability:

service reliability = number of successful requests / number of requests

The obvious question is then "What is the right level of reliability?"

That, they argue, is a business decision, based on the importance of the
product to customers, how much use the product can still be at various levels
of unreliability, and so on. TODO Flesh out the weasel words "and so on."

With that decision in hand, the team defines a reliability budget (e.g. 99.5%
request success rate this quarter). Dev can push new code as long as they
haven't violated the budget.

This strategy sounds like it works very well for them, but it only works if
ultimate authority to control releases lies with the SRE team. At Google, IIRC
from other sources, SRE is allowed to stop supporting product teams that don't
keep the rules, and the highest level of management has backed SRE
consistently.


Chapter 4 - Service Level Objectives
====================================



Chapter 5 - Eliminating Toil
============================

Google is dedicated to automating operational work that doesn't require human
judgment, to ensure their operations team operates sustainably. They know
automatable work when they see it, and they have a word for it (toil), but they
don't have a concise, clear definition for it. They commit that any given SRE
will spend at most 50% of a quarter toiling.


Chapter 6 - Monitoring Distributed Systems
==========================================
