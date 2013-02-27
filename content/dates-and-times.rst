Dates And Times
===============

:date: 2013-01-01
:category: data structures
:summary: A brief summary of time.

A date marks a particular day in history (history including the past,
present, and future) as denoted by a specific `calendar`_ (frequently
Gregorian).

A time marks a particular moment during a day with a reasonable degree of
precision. If precision is greater than one minute, it is probably not a
meaningful time. Most libraries offer time resolutions much higher than a
second.

A datetime stores a date and a time together to identify a particular moment
in history.

The most common timekeeping systems use `timezones`_. Recorded times (and
datetimes) should always include a timezone, which should almost always be the
common timezone used for storage throughout the system.

If perceived time matters to the system, it should let users choose a timezone
other than the system's default. To display perceived times accurately, a log
of every timezone the user has ever used must be kept, as well as the datetime
of each timezone change. That level of accuracy is not necessary for all
software, but it cannot be accurately.

Dates should include ``date`` in their name, often as a prefix to a past-tense
verb (``date_created``). Similarly, datetimes should include ``time`` in their
name (``time_updated``).

Do not use dates to store years, or years and months. The additional day field
will become a broken clock. For the same reason, do not use datetimes to store
dates.

`Dealing with time`_ can be much more involved, and sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
