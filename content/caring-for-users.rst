Caring For Users
================

:date: 2013-01-01
:category: fundamentals
:summary: If a program runs in a forest but no one sees the output...

Programs are tools, and like all tools, they are made to be used.

A program with no users is worse than pointless. It cannot do anyone good, as
no one uses it, but it incurs the manifold costs of creation.

.. TODO Link 'learning exercise for the programmer' to essay on POCs and
   prototypes.

Note, however, that 'users' may be hard to detect. Many programs are written as
a learning exercise for the programmer. In those cases, the author is a user,
though it may be never be used after writing it.

Having users is necessary but not sufficient to label a program successful. A
program is only good if it makes the users' lives better.

As a maker of programs, then, the programmer's goal should be to care for each
program's users.

How can you do that?

.. TODO Link 'understand their problems deeply' to Understanding Problems.

Listen to them. Make it easy for them to give feedback, both through tooling
and personal interactions. When they have something to say, let them say it,
without interrupting. When they ask for a feature, don't assume you know what
they want or need - let them explain it to you. Chew on what they tell you,
understand their problems deeply, then outline your understanding for them, to
see if you've followed correctly.

Talk to them. Beg them (politely) for bug reports, feedback, complaints,
and feature requests, and always be grateful for responses. Even a report like
"it doesnt work" represents some degree of effort to improve the software.
Encourage questions, and take the time to answer them well.

Watch them work. See how they do their tasks without the tools you create, and
with them. Let them try your work-in-progress and see how they react to it.
Analyze their workflows and usage patterns, and propose interface changes and
new features based on that, rather than on `hypothetical difficulties`_. When
it makes their lives better, `automate processes entirely`_, but give them
simple, robust ways to bypass and override the automation, because `all systems
fail`_.

Protect them. If someone who does not use the software requests a feature,
discuss it with actual users. Only add it if it helps them. If users request a
feature that seems short-sighted or unwise, work with them to fully understand
the problem underlying their request, and design a better solution. If the
users still prefer their original solution, debate, design, and discuss with
them until you reach a shared understanding of what to do.

By definition, only a programmer can create software.

Thus, users only suffer when a programmer allows it.

Fight for them.

.. _automate processes entirely: /automate-everything.html
.. _hypothetical difficulties: /hypotheticals-are-deadly.html
.. _all systems fail: /fail-gracefully.html
