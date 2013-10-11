Dates And Times
===============

:date: 2013-01-01
:category: data modeling
:summary: A brief summary of time.

A date marks a particular day in history (history including the past,
present, and future) as denoted by a specific `calendar`_ (frequently
Gregorian).

A time marks a particular moment during a day with a reasonable degree of
precision. If resolution is lower than a minute, it is probably not
a meaningful time. Most libraries offer time resolutions much higher than a
second.

A datetime stores a date and a time together to identify a particular moment
in history.

The most common timekeeping systems use `timezones`_. Recorded times (and
datetimes) should always include a timezone, which should almost always be the
common timezone used for storage throughout the system.

If perceived time impacts system behavior, it must record each user's active
timezone. To track perceived times accurately, each time a user sets their
timezone, record it and the datetime it was chosen. The resulting timezone log
can be used to compute correct user-relative times across the project's
history. For datetimes preceding the user's creation, assume their first
timezone applies.

Not all software needs this behavior across history, but it cannot be
introduced after the fact, so think about it up front.

Dates should include``date`` in their name, often as a prefix to a past-tense
verb (``date_created``). Similarly, datetimes should include ``time`` in their
name (``time_updated``).

Do not use dates to store years, or years and months. The extra fields will
become broken clocks. For the same reason, do not use datetimes to store dates.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
