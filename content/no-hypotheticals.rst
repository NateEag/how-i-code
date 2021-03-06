Hypotheticals Are Deadly
========================

:category: meta
:summary: Do not solve hypothetical problems.
:date: 2013-01-01

A programmer should make tools to help real people solve actual problems.

.. 'quality' should be a link to my unfinished rant on quality being finite.

Few development teams do that. They waste money, time, and quality by writing
systems for "the users".

They do not know who will use their software, so they do not know what problems
those users have, nor how to solve them.

If such a system is a commercial product in an ideal free market, this does
only moderate harm. The programmers waste some time, the business dies since
its product has no market, and some people lose their jobs, but few outside the
poorly-planned venture suffer.

However, there are precious few ideal markets in the world. When such software
is released, some people will use it, no matter how poor it is (usually because
their job requires them to). Since the tool was not designed to solve their
actual problems, their day-to-day interactions with it are a constant struggle.

When a stakeholder says, "Our users will need to export to Microsoft Office
formats," he is presenting a hypothetical problem. Make him identify specific
people that want this feature. Talk to them and figure out exactly what they
need.

When you say, "Other developers may want to use an alternate authentication
engine," you are presenting a hypothetical problem. Identify specific
programmers who want to do this and talk to them about it. [#]_

If you cannot find any actual users, your system cannot solve a problem for
anyone.

Before writing a program, find at least one person who wants to use it. If you
cannot find one, find a program a real person wants to use and write that
instead.

Note that these rules cannot be broken if a programmer is writing software to
solve a problem he has. A `lot`_ `of`_ `great`_ `software`_ was made this way.

.. [#] Design is important, and a good design anticipates change. Do not make
       those changes until someone wants them, however.
.. _lot: http://paulgraham.com/rootsoflisp.html
.. _of: http://www.emacswiki.org/emacs/EmacsHistory
.. _great: http://www.bay12games.com/dwarves/
.. _software: http://csapp.cs.cmu.edu/3e/docs/chistory.html
