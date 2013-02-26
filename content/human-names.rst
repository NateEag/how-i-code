Human Names
===========

:date: 2013-01-01
:category: data structures
:summary: Dealing with human names is hard.

Human names cannot be `sanely validated`_.

It is incorrect to assume that every person in a system has a name. It's also a
bit intrusive to insist that every person using a system provide one.

When it's relevant, software should offer people the chance to provide their
full name.

If they choose to give a full name, it should be stored exactly as
provided (keep in mind that names come in a gigantic variety of languages,
which means you'd better get character encodings right).

If a system is particularly brave, it might try to be friendly by addressing
people with nicknames. It could construct nicknames by using all characters in
their full name up to the first whitespace character.

If a program *does* decide to use nicknames, it should give people a way to
change their nickname, as it's bound to get some wrong. However, it should not
make them specify a nickname unless they choose to, just as with full names.

.. _sanely validated: http://www.kalzumeus.com/2010/06/17/falsehoods-programmers-believe-about-names/
