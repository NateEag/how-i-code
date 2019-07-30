Daily Routine
=============

An attempt to define my daily workflow as a programmer.


Start Of Day
------------

Process voicemails

Process software notifications (IM, alarm/warning systems, RSS [for tracking
software releases], etc)

Process email inbox

Empty the untriaged issues queues in my work projects (fifteen minute limit)

Update local dev tools I track unstable with (Emacs packages, mostly)
(twenty-minute limit)

Define goal for day (in shared task tracker)

Announce goal for the day to get accountability. This is what standup meetings
are for. Automation could help here - a command that announces your defined
goal for the day to the group chat half an hour after you've logged on, or "I
don't know what I'm doing today" if you haven't yet defined one provides
pressure in the right direction.


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
<http://paulgraham.com/hamming.html>`__ by IM, face-to-face/video
conversations, and phone calls.

The best way to answer project-related questions is a link to existing
documentation that answers the question. In many ways, a developer serves as a
human index for the docs she writes.

If you know the answer to a question but do not have a link to documentation
containing it, look for one, in case it already exists.

After any work-related conversation, in any medium, do the following things:

* Add any new goals or tasks to the shared task list
* Add documentation tasks for any questions you answered that don't have docs
* Re-check your priorities to see if you should jump to one of the new goals


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
