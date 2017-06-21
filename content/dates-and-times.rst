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

Precision is important when dealing with time. "An hour ago" specifies a time,
and so does "one hour, seven minutes, and thirty-three seconds ago", but they
communicate different things. Libraries tend to default to a precision of
seconds or higher, and don't always offer a way to handle lower-precision
times, so think carefully about precision before writing time-related code.

In a similar vein, do not use dates to store years, or years and months, since
the extra fields will become broken clocks.

That may seem like strange advice, but many systems assume an exact date is
always available, which is not always the case. That possibility is especially
significant in historical research, where having only fragments of incomplete
records can make even pinning down a year difficult.

The most common timekeeping systems use `timezones`_. When recording times,
always include a timezone. In almost all cases, all stored times should be
normalized to the same timezone (UTC is a good choice).

If perceived time impacts system behavior, record each user's active timezone.
To track perceived times accurately, when a user sets their timezone, record it
and the datetime it was chosen. The resulting timezone log can be used to
compute correct user-relative times across the project's history. For datetimes
preceding the user's creation, you could assume their first timezone applies
(be sure you publicize that assumption).

Not all software needs this behavior across history, but it cannot be
introduced after the fact, so think about it up front.

Dates should include ``date`` in their name, often as a prefix to a past-tense
verb (``date_created``). Similarly, datetimes should include ``datetime`` in
their name (``datetime_updated``).

.. TODO Simplify this paragraph.

To compare A.D. Gregorian dates in environments with no native support (like
bash), concatenate their elements from largest unit to smallest and compare the
results as integers. For times or datetimes, do the same, using twenty-four
hour time.

`Dealing with time`_ can be much more involved. Sometimes it has to be.

.. _calendar: http://en.wikipedia.org/wiki/Calendar
.. _timezones: http://en.wikipedia.org/wiki/Time_zone
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
