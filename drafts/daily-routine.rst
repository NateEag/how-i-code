Daily Routine
=============

An attempt to define my daily workflow as a programmer.


Start Of Day
------------

Process email inbox

Process RSS notifications (mostly useful for tracking software releases)

Update local dev tools I track unstable with (Emacs packages, mostly)
(twenty-minute limit)

Define goals for day (in shared task tracker)

Publish goals for day (can wait for standups when applicable)


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

The main value of email is that it leaves a written record of the discussion
and that it doesn't require the recipient to handle the sender's communication
immediately as their primary concern.

Therefore, I handle email as follows.

Check email on arrival in the morning, before going to lunch (or after if lunch
comes as a surprise), and and hour before EOD (so you have time to act on
anything important).

Do not check it unprompted otherwise, and turn off notifications for regular
email.

When you check email, respond to any messages you need to.

Check email an hour before signing off for the day, so you have time to act on
anything important that comes in.

I'm considering setting up a post-mailcheck script to notify me when tagged
threads receive new emails. That would help me be responsive in email exchanges
with clients who don't have my internal phone number or IM.


Handling Interrupts
-------------------

Prune notifications ruthlessly. Their purpose is to trigger your interrupt
handler, so any notification that shouldn't do that ought to be turned off.


Communications
~~~~~~~~~~~~~~

People take priority over goals except in emergencies (TODO define business
emergency. Goals where failure to achieve them in time will immediately damage
the company's ability to remain solvent?). Therefore, encourage humans to
interrupt you by IM, face-to-face/video conversations, and phone calls (sigh).

After any work-related conversation, in any medium, do the following things:

* Add new goals and tasks to the shared task list based on the discussion
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
