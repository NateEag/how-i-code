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
implement things like [delay
lines](https://en.wikipedia.org/wiki/Analog_delay_line), while task schedulers
often support statements like "run this job every 5 minutes". Do not use the
system clock to measure the passage of time in these cases, because `system
time changes unpredictably`_. Use your platform's `monotonic clock`_ instead.

Programs that deal with datetimes must choose a strategy for handling
`timezones`_, as a datetime without a timezone is ambiguous.

If such a program's users value simplicity and clarity over ease of use, record
and show all times in `UTC`_. The US military uses this approach in their
operations to avoid confusion over timezones, at the cost of having no
correlation between time of day and exterior light.

.. TODO Think about how to integrate these authors' observations about
   timezones:

   http://tantek.com/2015/218/b1/use-timezone-offsets is interesting, but not
   as much so as I thought when I first found it. He's right that storing UTC
   without further thought is harder to read, but that's about the only useful
   thing I found in his essay. His claim that seeing named timezones in your
   data means you're making a mistake is demonstrably wrong (as he admits in a
   footnote to the article).

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

As of the late twentieth century, most regions define their `civil times`_ with
timezones relative to UTC. `IANA`_ `maintains`_ an indispensable `database of
time zones`_ for writing programs that deal with datetimes.

As timezones are human constructs defined by governments, they change slowly
but unpredictably, usually with advance notice `but not always`_, and programs
should not assume their tzinfo database instance is `current or complete`_.

If perceived time impacts system behavior, record each user's active timezone.
To track perceived times accurately, when a user sets their timezone, record it
and the datetime it was chosen. The resulting timezone log can be used to
compute correct user-relative times across the project's history. For datetimes
preceding the user's creation, you could assume their first timezone applies
(if you warn the user the time is extrapolated).

Not all software needs this behavior across history, but it cannot be
introduced after the fact, so think about it up front.

.. TODO Simplify this paragraph.

To compare A.D. Gregorian dates in environments without date types (such as
`bash`_), concatenate their elements from largest unit to smallest and compare
the results as integers. This approach also works for times and datetimes using
twenty-four hour time.

If the dates involved are guaranteed to be after January 1st, 1970, converting
them to `Unix time`_ and comparing the resulting integers is also an option.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _Precision: https://en.wikipedia.org/wiki/Accuracy_and_precision
.. _civil time: https://en.wikipedia.org/wiki/Civil_time
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _IANA: https://www.iana.org/
.. _maintains: https://tools.ietf.org/html/rfc6557
.. _database of time zones: https://www.iana.org/time-zones
.. _but not always: https://codeofmatt.com/on-the-timing-of-time-zone-changes/
.. _current or complete: https://data.iana.org/time-zones/theory.html#accuracy
.. _system time changes unpredictably: http://www.ntp.org/
.. _monotonic clock: https://www.softwariness.com/articles/monotonic-clocks-windows-and-posix/
.. _UTC: https://en.wikipedia.org/wiki/Coordinated_Universal_Time
.. _bash: https://www.gnu.org/software/bash/manual/bashref.html
.. _Unix time: https://en.wikipedia.org/wiki/Unix_time
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
