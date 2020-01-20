Triaging Issues
---------------

:date: 2013-01-01
:category: fundamentals
:summary: Weird stuff happens. We deal with it.

.. TODO Move below paragraph to overall 'issue management' essay?

When a program `surprises someone </software-surprises.html>`__, the
project team should respond to it.

.. TOD Hyperlink to the not-yet-written 'listening' fundamental skills essay.

Feedback triage is the act of converting user feedback into problem statements,
prioritizing problems relative to one another, resolving problems in the
prioritized order, and communicating clearly and promptly with the user
throughout the process.

Issue triage is a business-critical function and should be the top priority for
any team that supports live software. `Caring for users
</caring-for-users.html>`__ is the point of making software, and it is what
sustainable software businesses get paid to do.

It requires the whole team to work together well, and that each team member
understand their role on the team.

.. TODO Find a less ridiculous title than 'technical supporter'.

A technical supporter is someone who handles communication with users, creates
problem statements, and solves problems, but who does so without changing code
(in more formal environments).

A developer may do

to user complaints and questions, `understanding their
problem is </understanding-problems.html>`__, coming up with a solution to the
problem, doing the internal bookkeeping to get the team started on corrective
actions, and keeping the user up-to-date on the process.

Issue triage is the process of receiving user feedback, determining the
problem's severity, scope into well-defined, units of work in the project task
database entries.

There is a distinction between feedback and problems. Feedback is an initial
communication from an end user. A problem is are clear descriptions of
deficiencies

Software is only useful when it `helps users </caring-for-users.html>`__. By
definition any untriaged issue could be a hard blocker for all current users,
so untriaged issues should be treated as high-severity problems until they have
been shown to be otherwise.

Thus, the list of untriaged issues should contain zero items at end-of-day.
Even if a team consists solely of one developer, that developer should take
time every day to empty the untriaged issue queue. Otherwise, it becomes a
minefield of potentially disastrous issues, and evidence that the development
team does not care about what's happening to users in production.

.. TODO Point out that the zeroth and most important step in issue flow is
   receiving the report from a user, apologizing for the fact that they've
   experienced an issue, and letting them know if it's a known issue.

The first step in triaging an issue report is to add the new report to the
issue database. The new entry should include:

- The datetime the report was received
- The original user report, exactly as provided
- All additional data collected in first contact with the reporter

If it's available, include the reporter's contact information, so we can update
them with resolutions and workarounds as they're discovered. If the reporter
prefers not to provide it, that is of course their right, so an issue database
should not make it a required field.

The next step is to determine whether this issue has been seen before.

If you recognize the issue as an instance of a known issue, include a link to
the canonical issue report. Many issue trackers have a formal 'duplicate of'
field - if yours does, use it.

It is crucial that every received issue report be added to the program's issue
database for that program, which serves as the formal record of all incidents
involving the program. Paired with the 'duplicate issue' formalism, it helps
you see how common an issue is. It also helps you track all reporters who should
be notified once an issue is resolved.

Paired with human analysis of the issue's severity, that gives you exactly what
you need to prioritize development work.

.. TODO Finish writing this.

.. TODO Digest this monster essay thoroughly, as it's full of good ideas:
   https://apenwarr.ca/log/20171213
