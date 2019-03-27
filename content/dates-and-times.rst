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

Precision is important when dealing with time. "An hour ago" specifies a time,
as does "one hour, seven minutes, and thirty-three seconds ago", but they
communicate different things. Libraries tend to use a precision of seconds or
higher, and don't always offer a way to handle lower-precision times, so think
carefully about precision when writing time-related code.

Precision applies to dates, too. Do not use dates to store years, or years and
months, since the extra fields will become broken clocks.

That may seem like strange advice, but many systems assume an exact date is
always available, which is not always the case. That possibility is especially
significant in historical research, where having only fragments of incomplete
records can make even pinning down a year difficult.

.. TODO Think about how to integrate these authors' observations about
   timezones: http://tantek.com/2015/218/b1/use-timezone-offsets
   https://www.creativedeletion.com/2015/03/19/persisting_future_datetimes.html
   https://codeblog.jonskeet.uk/2019/03/27/storing-utc-is-not-a-silver-bullet/

The most common timekeeping systems use `timezones`_. For portability's sake,
that means most systems should include a timezone in their datetime data
structures. In almost all cases, stored times should be normalized to the same
timezone (UTC is a good choice).

If perceived time impacts system behavior, record each user's active timezone.
To track perceived times accurately, when a user sets their timezone, record it
and the datetime it was chosen. The resulting timezone log can be used to
compute correct user-relative times across the project's history. For datetimes
preceding the user's creation, you could assume their first timezone applies
(if you warn the user the time is extrapolated).

Not all software needs this behavior across history, but it cannot be
introduced after the fact, so think about it up front.

Some programs need to reliably compute the amount of time that has passed
between two events (for instance, audio synthesis programs). Do not use wall
clock time to do this, because `wall clock time changes unpredictably`_ on most
systems, and your program likely does not care what perceived time the events
were, just how far apart they were. Find your platform's `monotonic clock`_ and
use that.

.. TODO Simplify this paragraph.

To compare A.D. Gregorian dates in environments with no native support (like
bash), concatenate their elements from largest unit to smallest and compare the
results as integers. For times or datetimes, do the same, using twenty-four
hour time. If the dates involved are guaranteed to be after January 1st, 1970,
converting them to `Unix time`_ and comparing the resulting integers is also
an option.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _wall clock time changes unpredictably: http://www.ntp.org/
.. _monotonic clock: https://www.softwariness.com/articles/monotonic-clocks-windows-and-posix/
.. _Unix time: https://en.wikipedia.org/wiki/Unix_time
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
