Hypotheticals Are Deadly
========================

:category: meta
:summary: Refuse to solve hypothetical problems.
:date: 2013-01-01

A programmer makes software to help real people solve actual problems.

That simple sentence implies some things.

  * Do not write code for hypothetical people.
  * Refuse to solve hypothetical problems.

.. 'quality' should be a link to my unfinished rant on quality being finite.

Most development teams ignore these rules. They waste money, time, and quality
by writing systems for "the users".

They do not know who will use their software, so they cannot know what problems
it should solve, nor how it should solve them.

If such a system is a commercial product in an ideal free market, this does
only moderate harm. The programmers waste some time, the business dies since
its product has no market, and some people lose their jobs, but few outside the
poorly-planned venture suffer.

However, there are precious few ideal markets in the world. When such software
is produced, some people will use it, no matter how poor it is, usually because
their job requires them to. Since the tool was not designed to solve their
actual problems, their day-to-day interactions with it are a constant struggle.

When a stakeholder says, "Our users will need to export to Microsoft Office
formats," he is presenting a hypothetical problem. Make him identify specific
people that wants this feature. Talk to them and find out exactly what they
need.

When you say, "Other developers may want to use an alternate authentication
engine," you are presenting a hypothetical problem. Identify specific
programmers who want to do this and talk to them about it. [#]_

If you cannot find any actual users, your system cannot solve a problem for
anyone.

When writing a program, find at least one actual person who wants to use it.
If you cannot find one, find a program that an actual person does want to use,
and write that instead.

Note that this rule is unavoidably kept when a programmer writes software he
wants. A `lot`_ `of`_ `great`_ `software`_ was made this way.

.. [#] Design is important, and a good design accounts makes future changes
       easy.  Just don't make those changes until someone wants them.
.. _lot: http://paulgraham.com/rootsoflisp.html
.. _of: http://www.emacswiki.org/emacs/EmacsHistory
.. _great: http://www.bay12games.com/dwarves/
.. _software: http://cm.bell-labs.com/who/dmr/chist.html
