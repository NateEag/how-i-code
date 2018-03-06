Daily Routine
=============

An attempt to define my daily workflow as a programmer.


Start Of Day
------------

Process voicemails

Process software notifications (IM, alarm/warning systems, RSS [for tracking
software releases], etc)

Process email inbox

Update local dev tools I track unstable with (Emacs packages, mostly)
(twenty-minute limit)

Define goals for day (in shared task tracker)

Announce goals for day, to get accountability (can wait for standups if
applicable). Automation can help here - a command that announces your defined
goal for the day to the group chat half an hour after you've logged on, or "I
don't know what I'm doing today" if you haven't yet defined one provides
pressure in the right direction.


Goal-Achievement routine
------------------------

Break goal into tasks (in shared task tracker if supported)

For each task:

Estimate completion time (again, in tracker if supported)

If estimate > 1 hour, break into smaller tasks, enqueue them, and continue loop

Set timer for estimated time

Attempt to complete task

If timer goes before completion, reconsider approach. Update task list if
necessary.

If task proves to be ill-conceived, reconsider task breakdown and goal
selection in context of whole project. Add, change, and remove tasks and goals
as appropriate based on discoveries.


Scheduled Events
----------------

.. TODO Link to essay on when to use what communications medium.

The main value of email is that it leaves a written record of the discussion
and that it doesn't require the recipient to handle the sender's communication
immediately.

Therefore, I handle email as follows.

Check email on arrival in the morning, before going to lunch (or after if lunch
comes as a surprise), and and hour before EOD (so you have time to act on
anything important).

Do not check it unprompted otherwise, and turn off notifications for regular
email.

When you check email, your main goal is to convert inbound messages into tasks
or goals in the shared task tracker for projects you are responsible for.
Respond to any messages as needed, to clarify what goals or tasks should be
created and to maintain good relationships. Forward messages concerning
projects that are not your responsibility to the appropriate maintainer.

Check email an hour before signing off for the day, so you have time to act on
anything important that comes in.

If you have an email thread where responses require immediate attention, flag
it as 'watched', and have your email client send you a notification when new
responses come in on watched threads.

That way, you can treat most email as a background batch process, while still
responding quickly to threads where it's necessary.


Handling Interrupts
-------------------

Prune notifications ruthlessly. Their essential nature is to let you know
something has happened that may require your immediate attention, so turn off
or pause all notifications that you know do not require it.


Communications
~~~~~~~~~~~~~~

People take priority over goals except when failing goals will severely damage
the business (TODO define 'severely damage'. Goals where failure to achieve
them in time will immediately damage the company's ability to remain solvent?).
Therefore, encourage humans to interrupt you by IM, face-to-face/video
conversations, and phone calls (sigh).

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
