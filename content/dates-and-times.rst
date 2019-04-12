Dates And Times
===============

:date: 2013-01-01
:category: data modeling
:summary: A brief summary of time.

A date marks a particular day in history (possibly in the future) using a
specific `calendar`_ (frequently Gregorian).

A time marks a specific moment during an unspecified day with a reasonable
degree of precision.

A datetime stores a date and a time together to identify a particular moment in
history.

Date fields should include ``date`` in their name, often as a prefix to a
past-tense verb (``date_created``). Similarly, datetime fields should include
``datetime`` in their name (``datetime_updated``).

`Precision`_ is important when dealing with time. "An hour ago" specifies a
time, as does "one hour, seven minutes, and thirty-three seconds ago", but they
communicate different things. Libraries tend to use a precision of seconds or
higher, and don't always offer a way to handle lower-precision times, so think
carefully about precision when writing time-related code.

Precision applies to dates, too. Do not use dates to store years, or years and
months, since the extra fields will become broken clocks.

That may seem like strange advice, but many systems assume an exact date is
always available, which is not always the case. That possibility is especially
significant in historical research, where having only fragments of incomplete
records can make even pinning down a year difficult.

Some programs need to know how much time passes between events but are not
concerned with event datetime. Audio synthesis programs use time this way to
implement features like `delay lines`_, while task schedulers often support
statements like "run this job every 5 minutes". Do not use the system clock to
measure the passage of time in these cases, because `system time changes
unpredictably`_. Use your platform's `monotonic clock`_ instead.

Programs that deal with datetimes must deal with `timezones`_.

As of the late twentieth century, most regions define their `civil times`_
relative to `UTC`_. `IANA`_ `maintains`_ an indispensable `database of time
zones`_ for writing programs that deal with datetimes.

.. TODO Explain that offset does not a timezone make. Storing offset + name is
   safest.

Since a time without a timezone is ambiguous, always store times with a
timezone and always make it available in the interface. It may be hidden by
default, but if it is make it easy to discover.

When a user enters a datetime, do not guess what timezone they wanted. Make
them specify it, because heuristics are wrong sometimes, and that wrongness
will lead to unpleasant surprises.

That doesn't require a proliferation of dialog boxes, as there are several
reasonable ways to help users specify timezone.

The simplest is to let the user specify a default timezone for use across the
application and to use that for all times they enter.

For cases where the default may not be what the user wants, suggest a
reasonable choice but let them override it. If the time is linked to a physical
address or the user's current location, `use a GIS lookup`_ to find a
suggestion. If they're interacting with a user whose default differs from
theirs, suggest the other user's timezone.

As timezones are defined by governments, they change slowly but unpredictably,
usually with advance notice `but not always`_. Thus, programs should not assume
their tzinfo database instance is `current or complete`_. There may be future,
present, or even past changes to timezone definitions your tzinfo instance does
not know about yet.

Therefore, store times with the user-specified timezone and do timezone
conversions as needed. Converting user-entered times or datetimes to UTC (or
another timezone) for storage means that saved times will be incorrect in the
face of timezone changes and your users will be exposed to silent failures. No
one likes missing appointments or being late to work.

.. TODO Drop this. If you store datetimes with the user's local timezone ID,
   and possibly the offset from UTC at the time of entry, you do not need to
   keep a record of their past timezones - their datetime entries retain the
   information themselves. TODO Choose timezone for user timezone log change
   entries and justify it. TODO Move this out to a data structure note?
   Timezone logs are a bit implementation-focused for what's otherwise a fairly
   abstract piece.

If users care about what day they see past actions as having happened (for
instance, when tracking a `daily chain`_), the system must be able to retrieve
their local timezone for any time after they begin using the deployment.

To handle such cases, model users has having a list of historical timezones,
where the tzinfo timezone identifier and the datetime the user chose the
timezone. When a user sets their timezone, append it to a list of user
timezones in which each entry contains a tzinfo timezone name and a begin
datetime. When a user sets their timezone, append an entry to that user's
timezone list. The resulting timezone log can be used to compute correct
user-relative times across a deployment's history. For datetimes preceding the
user's creation, you could assume their first timezone applies (if you warn the
user the time is extrapolated). Not all software needs this level of
user-relative history, but it cannot be correctly introduced after the fact, so
consider it before a first release.

If a program's users value simplicity and ease of coordination over ease of
use, you can spare them the need to think about multiple timezones by storing
and displaying all dates using a single timezone. UTC works well for this
purpose, but it can be reasonable to let users choose the common timezone. This
approach is useful for network server logs and postmortems, as using a single
explicit timezone makes it easier for people in different timezones to talk
about what happened when.

.. TODO Think about how to integrate these authors' observations about
   timezones:

https://www.creativedeletion.com/2015/01/28/falsehoods-programmers-date-time-zones.html
   is a great piece of work and should be linked somewhere from this essay.

   https://www.creativedeletion.com/2015/03/19/persisting_future_datetimes.html
   has the germ of a good approach to building systems for users who care about
   local times, but is wrong on several points (recent past is *not* safe to
   persist as UTC if users want to see it as localtime because of delays in
   getting timezone updates, and assuming the user wants localtime will lead to
   surprising failures)

   https://codeblog.jonskeet.uk/2019/03/27/storing-utc-is-not-a-silver-bullet/
   is annoying as it wastes a ton of time on examples of what not to do, when
   he could have led with a clear problem statement, shown his solution, then
   finished with a few quick notes on the consequences of getting it wrong. I
   hate article padding. Nonetheless, it is a decent articulation of the
   problem and it got me to think about timezones again.

.. TODO Simplify this paragraph.

To compare A.D. Gregorian dates in environments without date types (such as
`bash`_), concatenate their elements from largest unit to smallest and compare
the results as integers. This approach also works for times and datetimes using
twenty-four hour time.

If the dates involved are guaranteed to be after January 1st, 1970, converting
them to `Unix time`_ and comparing the resulting integers is also an option.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _delay lines: https://en.wikipedia.org/wiki/Analog_delay_line
.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _Precision: https://en.wikipedia.org/wiki/Accuracy_and_precision
.. _civil time: https://en.wikipedia.org/wiki/Civil_time
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _IANA: https://www.iana.org/
.. _maintains: https://tools.ietf.org/html/rfc6557
.. _database of time zones: https://www.iana.org/time-zones
.. _but not always: https://codeofmatt.com/on-the-timing-of-time-zone-changes/
.. _current or complete: https://data.iana.org/time-zones/theory.html#accuracy
.. _use a GIS lookup: https://github.com/evansiroky/timezone-boundary-builder
.. _system time changes unpredictably: http://www.ntp.org/
.. _monotonic clock: https://www.softwariness.com/articles/monotonic-clocks-windows-and-posix/
.. _UTC: https://en.wikipedia.org/wiki/Coordinated_Universal_Time
.. _daily chain: http://dontbreakthechain.com/
.. _bash: https://www.gnu.org/software/bash/manual/bashref.html
.. _Unix time: https://en.wikipedia.org/wiki/Unix_time
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
