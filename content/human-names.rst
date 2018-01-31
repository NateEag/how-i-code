Human Names
===========

:date: 2013-01-01
:category: data modeling
:summary: Dealing with human names is hard.

Human names cannot be `sanely validated`_.

It is incorrect to assume that every person in a system has a name. Newborn
babies don't always have names, and in `some cases it takes time`_ for them to
be named. Even for adults, who usually do have names, it's a bit intrusive to
insist they give it out.

When it's useful, software should let people add their full name. No
restrictions should be enforced, but it might be wise to ask for confirmation
for strange names, as they might contain typos ('strangeness' metrics should
probably be defined per-language).

Names should be stored exactly as provided. Remember that names are
language-specific so getting `character encodings`_ right is critical.

A brave system might try to address people by nickname, but it would be
difficult to get right. It could construct nicknames by splitting the full name
on word separators for the user's specified language (usually whitespace
characters), then choosing the first or last string based on the cultural
convention for the language in question (e.g., in English family name comes
last, but in Chinese it comes first). In languages that `have no word
separators <https://linguistics.stackexchange.com/a/6135>`__, a nickname cannot
be safely inferred so it should be left undefined unless the user chooses to add
one. Any messages in the program that use the nickname would therefore require
variants that do not use it.

Users should be able to edit and remove their names at any time without side
effects. If a program supports nicknames, it should let people change them.

Systems that bill users will need to collect a name at billing time, but they
should not require one until then.

.. _sanely validated: http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/
.. _some cases it takes time: http://www.straightdope.com/columns/read/1278/is-it-illegal-to-take-a-newborn-home-from-the-hospital-without-naming-it-first
.. _character encodings: http://www.joelonsoftware.com/articles/Unicode.html
