Daily Routine
=============

An attempt to define my daily workflow as a programmer.


Invariants
----------

Set a daily reminder for five minutes before my average departure time. This
helps keep me from being habitually late clocking out (research says effective
programmers do not overwork:
https://increment.com/teams/the-epistemology-of-software-quality/ )


Start Of Day
------------

Set reminder to eat lunch four hours from breakfast time. Reminder should go
off five minutes before lunchtime so you have a few minutes to save state on
your current task.

Do information triage (see that section), but constrain it to at most 30
minutes.

Once triage is done, pick an easy, small task that you believe will offer a
quick win for someone and try to do it. Timebox it to 30 minutes + leftover
time from the triage timebox. This can be anything you want - technical debt,
small feature, bugfix, whatever.

The point is to boost your morale and get something useful done, which is
especially important if an unclear, difficult task is your main focus.

Tell the team what task you're going to do. When the timer goes, let them know
whether you got it done or not.


Information Triage
------------------

Process voicemails. I rarely get any so I don't have much routine around this -
just convert them to tasks in the shared trackers as appropriate.

When on pager / production support duty, triage alerts and any auto-filed
tickets. For any projects that do not yet have proper alerting / ticketing for
production incidents, check system logs and triage any unusual entries.

Triage email inbox. That means get everything read and see if anything urgent
has come in since yesterday.

When on project management duty, empty the untriaged issue lists in the
projects I'm managing (fifteen minute limit, so I don't burn all day on triage
in huge, messy projects). When there's a dedicated PM for my projects that
isn't me, skip this, but sometimes that's not how it goes.

Review my assigned tasks with deadlines to make sure they're not falling
behind.

Now that I've gotten up to date on what's happening in the projects, define my
goals for the day in the shared task tracker. Create/assign tasks as needed and
make sure they're highest on my priority list (hack for this in systems without
support for defining an order on individual user task lists - set due dates to
EOD and find a view that shows your tasks sorted by due date).

Announce goals for the day to get accountability. This is what standup meetings
are for, but I want to make sure I do this promptly and even in contexts that
don't use daily goal setting.

If involved in projects that do not have functional alerting/auto-ticketing,
monitoring, and logging systems, spend thirty minutes working on getting
alerting/auto-ticketing, monitoring, and logging systems in place. Reason:
without those components silent failures may be destroying you.

Process low-priority software notifications (RSS [for tracking software
releases], desktop software update notifications).

Kick into goal achievement routine for the day.


After Lunch
-----------

Do another alerts / inbound email triage run.

If triage does not present immediate priority issues, take up to half an hour
to follow up on items from your email inbox. This is the part of the day where
I try to get my inbox to zero (by saving it until now I don't waste the early
morning on communications).

Return to goal achievement,


Goal Achievement routine
------------------------

Break goal into tasks in shared task tracker

For each task:

Estimate completion time (again, in tracker if supported)

If estimate > 1 hour, break into smaller tasks, enqueue them, and continue loop

If task is essential to the parent task/goal and not just plumbing/glue, add a
new task to develop a proof-of-concept, add it to the top of the subtask list,
and continue the task definition loop.

Set timer for estimated time

Attempt to complete task

If timer goes before completion, reconsider approach. Update task list if
necessary.

If task proves to be ill-conceived, reconsider task breakdown and goal
selection in context of whole project. Add, change, and remove tasks and goals
as appropriate based on discoveries.


Scheduled Events
----------------

Handling Email
--------------

.. TODO Link to essay on when to use what communications medium.

The main value of email is that it leaves a written record of the discussion
and that it doesn't require the recipient to handle the sender's communication
immediately.

Therefore, I handle email as follows.

Add reminders to check email on arrival in the morning, before and after lunch,
and an hour before EOD (so you have time to act on anything critical before
EOD).

Do not check it unprompted, and turn off notifications for regular email.

Practice inbox zero. The inbox does not have to literally be at zero - it's
fine to keep active threads in it to remind you to follow up on them later. But
rigorously archive, delete, or defer everything other than 'unresolved thread I
care about'.

.. TODO Link to explanation of task list vs issue list. Technically the issue
   list could be a subset of the task list, so my terminology is probably
   wrong. The point is that there's a difference between making changes to
   deliverables (docs, software) and helping people use the software. You can
   do the latter without having the skills to do the former.

When checking work-related email (as opposed to personal correspondence), your
goal is to convert messages into tasks in the appropriate project's shared task
list or issues in the project's issue list. Anything that matters should not be
living in your personal email collection, because then that item has a bus
factor of 1.

A secondary goal is to teach the people who sent you the emails to enter the
items into the appropriate queues themselves, rather than routing them through
you first (only relevant to teams with multiple people in each role).

Begin with a quick read of all unread emails pass through your inbox to
eliminate any noise, be sure you know which items have the highest priority,
and to make sure you don't act on stale information (e.g., responding to an
email before seeing a more recent update).

Then take a second pass through the messages you didn't delete or archive,
starting with the highest priority item and working your way down.

Making sure you're filing the right tasks is not easy. Respond to messages and
interact closely with the sender to `thoroughly understand problems
</understanding-problems.html>`__ before you file tasks, and to make sure you
are `really caring for </caring-for-users.html>`__ your users.

When you receive messages that relate entirely to a project you don't work on,
forward them to the appropriate maintainer. Reply directly to the original
sender and let them know who you passed it on to, so they know their question
isn't lost. By handling it this way instead of replying and adding the other
maintainer, you avoid the noise of the thread that doesn't apply to you.

If you have an email thread where responses require immediate attention, flag
it as 'watched', and set up your email client to send you a notification when
new responses come in on watched threads.

That way, you can treat most email as a background batch process, while still
responding quickly to threads as necessary.

TODO Figure out how to handle new threads from new contacts that are
highly time-sensitive.


Handling Interrupts
-------------------

Prune notifications ruthlessly. Their purpose is to tell you about events that
require immediate attention, so turn off notifications for any event you can
safely handle via scheduled batch job (whether literal or figurative).


Communications
~~~~~~~~~~~~~~

People take priority over daily goals except when failing goals will severely
damage the business (TODO define 'severely damage'. Goals where failure to
achieve them in time may quickly damage the company's ability to remain
solvent?). Therefore, `encourage humans to interrupt you
<http://paulgraham.com/hamming.html>`__ by IM, face-to-face or video
conversations, and phone calls.

The best way to answer project-related questions is a link to existing
documentation that answers the question. In many ways, a developer serves as a
human index for the docs she writes.

If you know the answer to a question but do not have a link to documentation
containing it, look for one, in case it already exists.

After any work-related conversation, in any medium, do the following things:

* Add new tasks to the shared task list. If there are no new tasks for anyone,
  go meta and consider whether the discussion (a.k.a. "meeting") was a failure
  and needs to be attempted again. In my view, meetings that result in no
  action items are failures (the whole point of a meeting is to bring multiple
  minds together to understand a situation or problem better and figure out who
  should do what about the situation - exception for one-on-ones as those are
  about relationship maintenance and won't always have concrete actionable
  outcomes [though if they usually don't that's probably a bad sign]).

* Add documentation tasks for any questions you answered without doc links (if
  you cannot find a link for the relevant docs as above)

* Re-check your current goals to see if you should replace any of them with one
  of the new tasks


Noticing Unrelated Issues
~~~~~~~~~~~~~~~~~~~~~~~~~

I notice things that are broken (or at least not ideal) multiple times an hour,
at least. Yay for detail-orientation.

To keep that from derailing me completely, I do *not* address those problems
when I see them. Instead, I throw a task into the appropriate project's
untriaged tasks list for future consideration and research, with just enough
information that I don't lose track of it.

Exceptions are made for low-risk changes (erroneous comments/docs/etc) where
making the change is faster than filing a task for it.

Even this can keep me pretty interrupted. This may need further refinement.

TODO Find a smoother, quicker way to note such things without distraction.


Tooling Defects
~~~~~~~~~~~~~~~

I frequently notice issues with my workflows and tooling - tasks that could be
automated, flows that could be streamlined, minor bugs that don't impact anyone
at present but could later, and so on.

Fixing every tooling issue is a never-ending stack of turtles, yet life can be
so much better for everyone if you actually fix them.

When you encounter one for the first time, check docs and the web for a quick
solution. Often it's just a question of knowing to set an option. Limit that
check + integrating the result into the process to five minutes.

If the timer runs out, make note of the issue/improvement in either your own
todo list or a shared todo list, depending on whether it's a shared piece of
tooling.

If you discover that the issue has already been filed, note that you've
encountered it again (or for the first time if someone else encountered it).

Next, decide how severe the issue is. If it's a blocker to forward progress on
the current goal, or it's an issue for other teammates, or you have encountered
it three times, give serious thought to fixing it (frequency of those three
encounters is important).

If you decide not to fix it, leave the reason why in the todo list entry, so
you (and others) know why you decided not to, for the next time the issue comes
up.


Lunchtime
---------

When reminder goes off, set five-minute timer. Take the five minutes to freeze
my current mental state (commit WIP, push, update task with status), then let
the team know I'm eating lunch.

After lunch, adjust "done for day" reminders to go off before quitting time.
Reminders should fire at thirty minutes (wrap up heavy work) and five minutes
before day's completion (see EOD section).


End Of Day
----------

When the EOD reminder goes off, take five minutes to save mental state on the
current project. That means making/pushing a WIP commit and updating the
corresponding task with notes to help me restore my state (or help a coworker
do so should someone else pick it up from me).

Update team on whether you achieved your goal or not. If not, explain why and
how you're adjusting your plans based on what you learned.

Update Emacs packages. Doing it daily keeps me from falling behind, which
becomes a problem when breaking changes to packages stack up. 10 minute time
limit, implemented as a 5-minute timer and a second 5-minute timer. If I catch
a problem after updating I can't solve within the limit, roll back changes and
schedule time to deal with it tomorrow.

Take the remaining fifteenish minutes to chip away at whatever task I want to
work on. Set a reminder to stop 5 minutes before EOD, so I have time to freeze
mental state. TODO Extract "freeze mental state" to its own essay. The why
behind it is worth explaining, because it isn't just about me.
