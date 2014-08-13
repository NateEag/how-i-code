Human Names
===========

:date: 2013-01-01
:category: data modeling
:summary: Dealing with human names is hard.

Human names cannot be `sanely validated`_.

It is incorrect to assume that every person in a system has a name. Newborn
babies don't have names, and in `some cases it takes time`_ for them to be
named.

It's also a bit intrusive to insist that every person using a system provide
one.

When relevant, software should let people add their full name. No restrictions
should be enforced, but it might be wise to ask for confirmation for strange
names.

If they enter a name, it should be stored as provided. Remember that names
are language-specific so `character encodings`_ are critical.

A brave system might address people by nickname. It could construct nicknames
by using all characters in their full name up to the first whitespace
character. For languages where family name comes first, starting at the end of
the name would make more sense.

If a program does use nicknames, it should let people change them, as it's
bound to get some wrong. However, they should be optional, just like full
names.

Users should be able to edit and remove their names at any time without side
effects.

Systems that bill users will need to collect a name at billing time, but they
should not require one until then.

.. _sanely validated: http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/
.. _some cases it takes time: http://www.straightdope.com/columns/read/1278/is-it-illegal-to-take-a-newborn-home-from-the-hospital-without-naming-it-first
.. _character encodings: http://www.joelonsoftware.com/articles/Unicode.html
