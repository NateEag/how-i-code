Triaging Issues
---------------

:date: 2013-01-01
:category: fundamentals
:summary: Weird stuff happens. We deal with it.

.. TODO Move below paragraph to overall 'issue management' essay?

When a program `surprises someone </software-surprises.html>`__, the
development team should respond to it.

Issue triage is the process of turning issue reports into prioritized database
entries with all available information to help developers resolve them.

It is a business-critical function and should be one of the top priorities for
any team that supports live software. Software is only useful when it `helps
users </caring-for-users.html>`__, and by definition any untriaged issue
could be a hard blocker for all current users, so untriaged issues should be
treated as high-severity problems until they have been shown to be otherwise.

Thus, the list of untriaged issues should contain zero items at end-of-day.
Even if a team consists solely of one developer, that developer should take
time every day to empty the untriaged issue queue. Otherwise, it becomes a
minefield of potentially disastrous issues, and evidence that the development
team does not really care what's happening to users in production.

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
