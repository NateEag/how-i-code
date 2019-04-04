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

Programs that deal with datetimes must deal with `timezones`_, as a datetime
without a timezone is ambiguous.

As of the late twentieth century, most regions define their `civil times`_ as
timezones relative to `UTC`_. `IANA`_ `maintains`_ an indispensable `database
of time zones`_ for writing programs that deal with datetimes.

As timezones are human constructs defined by governments, they change slowly
but unpredictably, usually with advance notice `but not always`_. Thus,
programs should not assume their tzinfo database instance is `current or
complete`_.

When a user enters a time or datetime in a specific timezone, do not convert it
to another timezone for storage (note if you store everything as UTC you are
violating this rule). There may be future, present, or even past changes to
timezone definitions your tzinfo instance does not know about yet. If such a
change exists and applies to the saved time, then your data is wrong, and you
are exposing your users to risk of silent failure. No one likes missing
appointments or being late to work. Do timezone conversions when you need them,
not before.

When a user enters a datetime, do not assume you know what timezone they
wanted. Make them specify it, because if you guess, you will be wrong
sometimes, and that in turn will lead to a nasty surprise.

That doesn't have to mean a proliferation of dialog boxes, though, as there are
several reasonable ways to infer a timezone. If you involve the user in the
inference process, they should not be surprised by the results. For instance,
if the time is linked to a physical address or the user's current location, you
could use a GIS lookup to `guess the timezone`_. If the user has specified a
default timezone, you could show a timezone dropdown that starts with their
default selected.

If perceived time impacts system behavior, then the system should record each
user's active timezone. To track perceived times accurately, when a user sets
their timezone, record it and the datetime it was chosen. The resulting
timezone log can be used to compute correct user-relative times across the
project's history. For datetimes preceding the user's creation, you could
assume their first timezone applies (if you warn the user the time is
extrapolated).

If a feature's users value simplicity and ease of coordination over ease of
use, you can spare them the need to think about multiple timezones by storing
and displaying all dates using a single timezone. UTC works well for this
purpose, but it may make sense to support a single globally-configurable
timezone. Regardless, always display the timezone itself clearly in the
displayed date and time objects, to avoid ambiguity. This approach is useful for
network server logs and postmortems, as using a single explicit timezone makes
it easier for people in different timezones to talk about when things happened.

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
.. _guess the timezone: https://github.com/evansiroky/timezone-boundary-builder/releases
.. _system time changes unpredictably: http://www.ntp.org/
.. _monotonic clock: https://www.softwariness.com/articles/monotonic-clocks-windows-and-posix/
.. _UTC: https://en.wikipedia.org/wiki/Coordinated_Universal_Time
.. _bash: https://www.gnu.org/software/bash/manual/bashref.html
.. _Unix time: https://en.wikipedia.org/wiki/Unix_time
.. _Dealing with time: http://news.ycombinator.com/item?id=5083321
