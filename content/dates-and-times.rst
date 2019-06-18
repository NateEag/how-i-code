Dates And Times
===============

:date: 2013-01-01
:category: data modeling
:summary: A brief summary of time.

Some programs need to know how much time passes between events but do not show
humans when those events actually happen.

Audio synthesis programs use elapsed time this way for things like `delay
lines`_, while task schedulers often support job specifications like "run every
5 minutes". Do not use the system clock to measure elapsed time, because
`system time changes unpredictably`_. Use the platform's `monotonic clock`_
instead.

Programs that show humans when events occur use dates and times to do so.

A date marks a particular day in history (perhaps in the future) using a
specific `calendar`_ (usually Gregorian).

A time marks a specific moment during an unspecified day with a reasonable
degree of precision.

A datetime identifies a particular moment in history by storing a date and a
time together.

.. TODO Move naming advice to a naming article?

.. TODO Consider whether '_on' and '_at' are clear enough to distinguish dates
   from datetimes? What about naming time fields?

Date fields should include ``date`` in their name, often as a prefix to a
past-tense verb (``date_created``). Similarly, datetime fields should include
``datetime`` in their name (``datetime_updated``). Names like ``last_seen`` are
unclear about whether they contain a date or a datetime, which can lead to
confusion.

`Precision`_ is important when dealing with time. "An hour ago" specifies a
time, as does "one hour, seven minutes, and thirty-three seconds ago", but they
mean different things. Libraries tend to precisions of seconds or higher, and
don't always offer a way to handle lower-precision times, so think carefully
about precision when writing time-related code.

Precision applies to dates, too. Do not store years or years and months as
dates, since the extra fields will become broken clocks. Exact dates are not
always available, especially in historical research, where having only
fragments of incomplete records can make even pinning down a year difficult.

Since recent dates and times are ambiguous without a `timezone`_, include them
on date and time fields and show them in the interface. They may be hidden by
default, but if so make them easy to discover.

.. TODO Hyperlink 'it is not perfect' to the finite quality essay once it's
   done.

As of the late twentieth century, most regions define their `civil times`_
relative to `UTC`_. `IANA`_ `maintains`_ an indispensable `database of time
zones`_ for writing programs that deal with recent datetimes. It is not perfect
but it is excellent, and no better one exists, so use it.

.. TODO Come up with a real use case for "current local timezone". Perhaps it's
   just a hypothetical, in which case I should obliterate it.

"Current local timezone" is a valid timezone specifier for events relative to
exactly one user. It is not valid when the event relates to multiple users as
each one of them may be in different timezones simultaneously. For a single
user, no such ambiguity exists. If she uses multiple computers with different
timezone settings simultaneously (such as a laptop and a smartphone) she can
decide which one to trust (warning her if they have inconsistent timezone
settings is helpful). Similarly, if she's physically near a timezone boundary,
she can decide which timezone applies to her (warning users when they are near
timezone boundaries is also helpful).

.. TODO Figure out whether it's useful to apply current local timezone to
   datetimes linked to locations.

When a user enters a datetime, do not guess its timezone. Make him specify it,
because guesses are wrong sometimes, and that wrongness will eventually cause
an `unpleasant surprise`_.

That doesn't require a proliferation of dialog boxes, as there are several
reasonable ways to help users specify timezone.

One is to let the user define a default timezone and to use it wherever it
reasonably applies.

When using the default timezone does not make sense, suggest a reasonable one
but let them change it. For example, if the time is related to a physical
address or location, `use a GIS lookup`_ to suggest one. If they're interacting
with a user whose timezone differs from theirs, suggest the other user's
timezone as an option.

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

This approach also makes it easier to do business logic that hinges on user
perception of event times - for instance, what day entries in a `daily chain`_
happened on. If you denormalize all timestamps to UTC, then you must maintain a
historical log of each user's timezone settings to work it out. When you store
each user event's local timezone as part of the datetime, then the datetime
itself stores the user's perception of when the event happened.

Remember, though, that if software needs the UTC equivalent of a local time, it
should save the timezone's offset from UTC alongside the timestamp, as local
times `cannot be unambiguously converted to UTC`_ without it.

If a program's users value simplicity and ease of coordination over ease of
use, you can spare them the need to think about multiple timezones by storing
and displaying all dates using a single timezone. UTC works well for this
purpose, but it can be reasonable to let an administrator choose the common
timezone. This approach is useful for network server logs and postmortem
documents, as using a single explicit timezone makes it easier for people in
different timezones to talk about what happened when.

.. TODO Simplify this paragraph.

To compare A.D. Gregorian dates in environments without date types (such as
`bash`_), concatenate their zero-padded elements from largest unit to smallest
and compare the results as integers. This approach also works for times and
datetimes using twenty-four hour time.

If the dates involved are guaranteed to be after January 1st, 1970, converting
them to `Unix time`_ and comparing the resulting integers is also an option.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _delay lines: https://en.wikipedia.org/wiki/Analog_delay_line
.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _Precision: https://en.wikipedia.org/wiki/Accuracy_and_precision
.. _civil times: https://en.wikipedia.org/wiki/Civil_time
.. _timezone: http://en.wikipedia.org/wiki/Time_zone
.. _IANA: https://www.iana.org/
.. _maintains: https://tools.ietf.org/html/rfc6557
.. _database of time zones: https://www.iana.org/time-zones
.. _unpleasant surprise: /software-surprises.html
.. _but not always: https://codeofmatt.com/on-the-timing-of-time-zone-changes/
.. _current or complete: https://data.iana.org/time-zones/theory.html#accuracy
.. _use a GIS lookup: https://github.com/evansiroky/timezone-boundary-builder
.. _system time changes unpredictably: http://www.ntp.org/
.. _monotonic clock: https://www.softwariness.com/articles/monotonic-clocks-windows-and-posix/
.. _UTC: https://en.wikipedia.org/wiki/Coordinated_Universal_Time
.. _daily chain: http://dontbreakthechain.com/
.. _bash: https://www.gnu.org/software/bash/manual/bashref.html
.. _cannot be unambiguously converted to UTC: https://www.creativedeletion.com/2015/01/28/falsehoods-programmers-date-time-zones.html
.. _Unix time: https://en.wikipedia.org/wiki/Unix_time
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
