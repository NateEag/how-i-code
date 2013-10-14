Solve Actual Problems For Real People
=====================================

:category: about
:summary: What a programmer is supposed to do.

A programmer's job is to make tools that help real people solve actual
problems.

That simple sentence implies some things:

  * Only write software if you are in contact with a person who wants to use
    it.

  * Only solve problems a person actually has.

Most development teams ignore these rules. They waste money, time, and
`quality <quality-is-finite.rst>` by writing systems that solve problems no
specific person actually has. In turn, these systems waste the users' time, by
providing tools ill-suited to solving the problems they actually have.

When a stakeholder says, "Our users will need to export to Microsoft Office
formats," he is presenting a hypothetical problem. Make him identify specific
users that need to do this, and talk to those users yourself to find out
exactly what they need.

When you say, "People may want to use an alternate authentication engine," you
are presenting a hypothetical problem. Identify specific users that want to do
this and talk to them.

If you cannot find any actual users, your system is pointless, because it
cannot solve actual problems for a real person.

While writing a program, find at least one actual person who wants to use it.
If you cannot find one, find a program that an actual person does want to use,
and write that instead.

It may be possible to write good software without obeying this rule, but
it is much easier if you do.

Note that this rule is unavoidably kept when a programmer writes software he
wants. A `lot`_ `of`_ `great`_ `software`_ was made this way.

.. _lot: http://paulgraham.com/rootsoflisp.html
.. _of: http://www.emacswiki.org/emacs/EmacsHistory
.. _great: http://www.bay12games.com/dwarves/
.. _software: http://cm.bell-labs.com/who/dmr/chist.html
