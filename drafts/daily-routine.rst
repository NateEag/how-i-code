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

Do information triage (see that section), but constrain it to at most 20
minutes. As the process itself notes, by definition, once you're done you
should know what your goals are for the day.

Now that I've gotten up to date on what's happening in the projects, define my
goals for the day in the shared task tracker.

This should not take more than five minutes - if it does, then the problem I'm
focused on is poorly-defined and my goal should be to define it more clearly.

In that case, say specifically what part I want to define clearly -
my deliverable is probably a specification of some sort (possibly a POC spec or
partial spec).

Create/assign tasks as needed and make sure they're highest on my priority list
(hack for this in systems without support for defining an order on individual
user task lists - set due dates to EOD and find a view that shows your tasks
sorted by due date).

Announce the day's goal to the team for accountability. This is what standup
meetings are for, but I want to make sure I do this promptly and even in
contexts that don't use daily goal setting.


Information Triage
------------------

This is a process I do to determine "what should I work on next?"

Thus, if I don't have a clear "next big item" after doing it, the process has
failed.

I do it twice daily in smaller environments where I wear a lot of hats. In
larger contexts with well-defined projects and people devoted to things like
infra and monitoring, I could probably get away with doing it much less often.

Check calendar for any upcoming events. If you expect to be out the next
business day, configure an out of office autoresponder as appropriate.

Process voicemails. I rarely get any so I don't have much routine around this -
just convert them to tasks in the shared trackers as appropriate.

Check instant messages (crucial information often comes through them).

If this is the first triage of the day:

* Check my daily log from yesterday for any undone todo items or any filed
  under the "Tomorrow" section. File new items accordingly (do not just copy
  and paste the whole block, because that never stops)

* Review assigned tasks and get the next-highest priority ones queued up in
  today's todo list. Make sure to check tasks with deadlines, in case there are
  lower-priority tasks with high urgency. If a task is not estimated to be < 30
  minutes or broken into subtasks with an estimate of < 30 minutes, then add
  doing a breakdown to the task queue, rather than the task itself.

When on pager / production support duty, triage alerts and any auto-filed
tickets. For any projects that do not yet have proper alerting / ticketing for
production incidents, check system logs and triage any unusual entries.

Triage email inbox. That means get everything read and see if anything urgent
has come in since the last info triage run.

When on project management duty, empty the untriaged issue lists in the
projects I'm managing. That means get them in the appropriate queue and
prioritized / deadlined. When there's a dedicated PM for my projects that isn't
me, skip this as it's their job, but sometimes you don't have one (or they
aren't that great).

Process low-priority software notifications (RSS [for tracking software
releases], desktop software update notifications).

As an incentive to stay focused and move fast, if you finish triage before the
timer goes, use the remaining time on whatever you want (dotfile tweaking,
Emacs Lisp, fixing a tiny little bug just because you want to, etc).


After Lunch
-----------

Set reminder to stop for EOD. It should go off half an hour before quitting
time, so I have time to save my state and follow up on todo items I've added to
the daily log throughout the day.

Do another information triage run.

If triage does not present immediate priority issues, take the remainder of
triage's half hour to follow up on items from your email inbox. This is the part
of the day where I try to get my inbox to zero (by saving it until now I don't
waste the early morning on communications). It's fine if it doesn't get to 0,
as long as there's less in it than there was at EOD yesterday.

Now, work your way down the list of prioritized goals, executing the goal
achievement routine for each one in turn.


Goal breakdown routine
----------------------

If the goal has not already been broken down into tasks in a shared task
tracker, do so as follows.

Create an overall task for the goal, then create the subtasks that would result
in the goal's achievement.

TODO Figure out if 1 hour is always applicable. I think some tasks are just
bigger than that... It's a starting place, though.

For each subtask:

Estimate completion time
If estimate > 1 hour:
    - break into smaller tasks (sub-sub tasks if tracker supports it)
    - enqueue them
    - continue loop

If task is essential to the parent task/goal and not just plumbing/glue, add a
new task to develop a proof-of-concept, add it to the top of the subtask list,
and continue the task definition loop.

Once the goal is broken into tasks, move on to the task completion routine.

Note that in principle, goal breakdown and task completion can be done
separately and by different people. Whether this works in practice is an open
question, IMO. I've not personally seen that work well yet. Might work better
when the person mapping out tasks actually does the POC tasks?


Task Completion Routine
-----------------------

For each task in a goal:

Check the task's last updated datetime. If it's more than a week old, some of
the assumptions may no longer hold and you should verify them before doing
anything else (otherwise you may wind up down a deep rabbithole unaware of a
software update that resolved your problem, for a totally-hypothetical
example).

If the task looks current after review, set a timer for the estimated time and
attempt to complete the task.

If you complete it, take a quick stretch break and start over with the next
task.

If the timer goes before the task's core is done, there are two
possibilities:

1) The core of the task is done other than trivia (writing commit message,
updating task tracker, etc). If this is the case, take up to ten more minutes
to finish those things and call it good (if it takes more than ten, the trivia
actually weren't).

2) The core of the task is not done, so back up and think bigger picture. Your
estimate was wrong, which means your mental model is off somewhere. Take a
quick stretch break, and on your return, see if five minutes of thinking shows
you your error. If yes, write your new understanding out (as a spec update,
task update, etc) and ask a teammate to sanity-check it for you. If five
minutes doesn't show you your error, ask a teammate for help figuring out why
you're stuck. Note that either way, you're asking for help - the five minutes
is to push you towards having something useful to ask the teammate, rather than
just saying "I'm stuck, help."

If task proves to be ill-conceived, reconsider task breakdown and goal
selection in context of whole project. Add, change, and remove tasks and goals
as appropriate based on discoveries, per the usual lifecycle of specifications
in the wild.


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

When you realize something you're interacting with as part of your current task
is broken, don't report it immediately unless it's truly dire (production is
not loading at all - and even in those cases, you should take a minute or two
to verify the situation so your report is useful). Triage it for importance
relative to current task, and either file a followup task or shift focus to it
depending on your conclusion. If you decide it's more important than your
current task,

People take priority over daily goals except when failing goals will severely
damage the business (TODO define 'severely damage'. Goals where failure to
achieve them in time may quickly damage the company's ability to remain
solvent?). Therefore, `encourage humans to interrupt you as needed
<http://paulgraham.com/hamming.html>`__ by IM, face-to-face or video
conversations, and phone calls.

.. TODO Link 'shared task tracker' to an appropriate project management essay.

If the interruption is about a task's status, ensure the task is up-to-date in
the tracker, then point the interrupter to the item's URL in the task tracker
(if you don't have a shared task tracker, get one).

If the interruption is to introduce a new piece of work, ask the interrupter to
file a task in the tracker. Since they're interrupting, check what priority
they think the task is (i.e., do they want you to drop your current work to
tackle this immediately). If so, take a minute to understand the problem and
see if you agree that it should be handled immediately and discuss further if
needed. If you do, choose something to kick out of this week's work to make
space for the new work, and make sure all stakeholders are okay with the change
before doing it. If you don't think it's urgent, figure out why they do then
see if either side can convince the other - if not, escalate to managers and
let them sort it out.

If the interruption is mainly social and you're deep in something, consider
asking if you can catch up later. If you do, set a reminder to actually catch
up later, and don't always defer things - we work with people, not robots.
Interpersonal relationships matter, and are far more important to a project's
success than almost any specific technical task. Further, if you never interact
socially, "your door is always closed" (or, "your headphones are always on", to
adapt Hamming's idea to the modern open-plan office).

The best way to answer project-related questions is a link to existing
documentation that answers the question. In many ways, a developer serves as a
human index for the docs she writes.

If you know the answer to a question but do not have a link to documentation
containing it, look for one, in case it already exists. If you cannot find it,
write it and provide the new link to the asker.

If the interrupt is in the medium of interactive text messaging (e.g., a Slack
message), and none of the preceding rules ended it, start a timer for five
minutes. If the interruption is not complete when the timer goes, move to
verbal discussion, either directly or as a scheduled meeting down the line,
depending on the question's urgency.


Communications
~~~~~~~~~~~~~~

After any work-related conversation, in any medium, do the following things:

* Add new tasks to the shared task list. If there are no new tasks for anyone,
  go meta and consider whether the discussion (a.k.a. "meeting") was a failure
  and needs to be attempted again. In my view, meetings that result in no
  action items are failures. The point of meetings is to bring multiple minds
  together to understand a situation or problem better and figure out who
  should do what about the situation (exception for one-on-ones as those are
  about relationship maintenance and won't always have concrete actionable
  outcomes [though if they usually don't that's probably a bad sign]).

* Add documentation tasks for any questions you answered without doc links (if
  you cannot find a link for the relevant docs as above)

* Re-check your current goals to see if you should replace any of them with one
  of the new tasks


Daily Log
---------

I keep a file of notes organized by day as I work. Most things do NOT belong in
here, because they belong in the shared systems: notes on architecture and
spitballing on how to make a concept work go in the project docs, notes to
yourself as you think through a task belong in the task's detailed comments (so
if someone else has to take over, they have all the knowledge you created right
there), and so on.

I keep a list of things to do today, and a list of things I have done today in
there.

This way, I can always go back and see what I actually *did* a given day. It's
sometimes redundant with the formal shared systems, but that's okay. This is
just for my personal use and to give me a quick way to make note of random
things I need to follow up on.

It also gives me a place to throw quick todo items so I can follow up on them
later, rather than getting distracted when they come up (see "Noticing
Unrelated Issues").


Noticing Unrelated Issues
~~~~~~~~~~~~~~~~~~~~~~~~~

I notice things that are broken (or at least not ideal) multiple times an hour,
at least. Yay for detail-orientation.

I also think of useful things that have nothing to do with what I'm currently
working on regularly.

To keep those from derailing me completely while still capturing some value
from them, I do *not* address those things when they come to me.

Instead, I throw a note into my daily log to follow up on it later, usually by
filing a task in the relevant project's untriaged tasks list for future
consideration and research, with just enough information that I don't lose
track of it.

I make sure to put dump the pertinent data right in the to do item, so I have
enough information to actually act on it later. Project, filepath / line
number, email address / phone / name of contact to add, and so on. without
specifics items are not usually actionable.

Exceptions are made for low-risk changes (erroneous comments/docs/etc) where
making the change is faster than filing a task for it.

When I'm writing code or docs and a not-right-now thought about what I'm doing
comes to me, I just throw a comment straight in the code / docs. If it's an
improvement I want to make, I start the comment with TODO. If it's an
observation about a way the code is broken, I start the comment with FIXME.


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

Start Emacs updating packages. Doing it daily keeps me from falling behind,
which becomes a problem when breaking changes to packages stack up. 10 minute
time limit, implemented as a 5-minute timer and a second 5-minute timer. If I
catch a problem after updating I can't solve within the limit, roll back
changes and schedule time to deal with it tomorrow.

While that churns away in the background, figure out what my main goal is for
tomorrow, based on whether I achieved my goal today and what's the next step
(barring new information coming in tomorrow AM that changes it).

Update team on whether I achieved today's goal or not, and announce tomorrow's
target. If I didn't achieve the goal, explain why not and how I'm adjusting
my plans based on what I learned.

Check calendar to see if I have any early-morning commitments I need to adjust
my default schedule for.

Take any remaining time to chip away at whatever task I want to work on. Set a
reminder to stop 5 minutes before EOD, so I have time to freeze mental state.
TODO Extract "freeze mental state" to its own essay. The why behind it is worth
explaining, because it isn't just about me.

If involved in projects that do not have functional alerting/auto-ticketing,
monitoring, and logging systems, a good choice for this last bit of time is
taking the next step to getting alerting/auto-ticketing, monitoring, and
logging systems in place. Reason: without those components silent failures may
be causing a lot of damage.
