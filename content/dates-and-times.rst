Dates And Times
===============

:date: 2013-01-01
:category: data structures
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

If perceived time matters to the system, it should let users choose a timezone
other than the system's default. To display perceived times accurately, a log
of every timezone each user has ever used must be kept, as well as the datetime
of each timezone change. The timezone change log can then be used to compute
correct user-relative times throughout the system. For datetimes preceding the
user's creation, it is necessary to assume their first timezone applies. That
level of accuracy is not necessary for all software, but it cannot be
introduced after the fact, so it should be considered carefully when beginning
new projects.

Dates should include``date`` in their name, often as a prefix to a past-tense
verb (``date_created``). Similarly, datetimes should include ``time`` in their
name (``time_updated``).

Do not use dates to store years, or years and months. The extra fields will
become broken clocks. For the same reason, do not use datetimes to store dates.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
