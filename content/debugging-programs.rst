Debugging Programs
------------------

:date: 2013-01-01
:category: fundamentals
:summary: Once you have understood a problem, it is nine-tenths solved.

.. TODO Link 'behave as expected' to an appropriate essay, maybe something
   about gathering requirements and how what devs and normals expect are often
   quite different.

When a program does not behave as expected, it should be fixed.

To fix unintended or unexpected behavior, you must first understand the root
cause of the behavior.

In some cases, it's immediately obvious.

.. TODO Expound on 'collecting data'. There are many ways to do it in software.

When it is not, apply the scientific method. Collect data about the behavior
until you derive a plausible explanation for it, then look for a simple, fast
way to falsify or confirm your hypothesis.

A good first step in data collection is checking for any useful logs, as many
programs output a lot of diagnostic and informational data. If there are
monitoring systems for the program you are analyzing, look at those too.

The production data from the impacted users are always helpful (though it is not
always practical to obtain them due to security and privacy constraints).

You can also run experiments on the program to collect data and falsify
hypotheses. In most cases, you can do that by running the program in a
development context and using a debugger, additional log statements, or other
changes to the program to gain a clearer understanding of the issue's root
cause.

Reading the source code is another way to gather data and confirm or reject
hypotheses about the program, but it tends to take longer than the methods
listed above. It is also more vulnerable to human error. Make no mistake, it is
a valuable tool, but not as helpful as you might hope.

No one of these techniques is a silver bullet. They are listed in order of
preference, but the goal is to understand the problem quickly and fully.
Combine them as needed. Do not prefer one excessively over the others, as no
one of them is always the best answer.

.. TODO Figure out if these are all the reasons a bug may disappear in dev.

Some bugs disappear when run in a development context, due to lower usage
volume, differences between the development and production versions of the
program, environment differences between development and production,
configuration differences between development and production, differences
between the production and development dataloads for the program, or
differences in program execution when run with development tooling (these bugs
are colloquially known as `heisenbugs`_).

.. TODO Find more conceptual links for `collect data` and `run experiments`.
   statsd and Scientist seem like fine tools but I've not actually had the
   pleasure of using them, and I'm more interested in the abstract concepts
   than I am in the specific tools.

When that happens, scour the logs and any other data from the production
environment thoroughly in hopes of finding more clues. If none can be found,
roll up your sleeves and figure out why the bug is not reproducible in a
development context. If you can then make the bug reproducible in a development
context, do so (unless the change would be prohibitively expensive). If
necessary, make changes to the program that let you `collect data`_ and `run
experiments`_ safely in production.

When a bug is not reliably reproducible in any installation, though, be very
cautious not to destroy any instances of it you have available for
investigation.

A test that does not write to its environment should be incapable of making
unexpected behaviors vanish.

However, it is extremely difficult, perhaps impossible, to construct a
read-only experiment on modern computer systems. Even simple programs often
write to multiple logfiles during normal usage, which could theoretically
influence the behavior you are investigating.

When testing behavior you have only seen on one computer, remember that tests
run as a different user may not be safely isolated. If either account has write
access to a shared data source, or if the experiment is run with administrative
privileges, it is capable of influencing the unexplained behavior.

If an experiment seems hard to execute, risky to carry out, or tricky to
reproduce, look for a simpler one. A few more minutes of thought will often
lead to a `clearer understanding of the issue`_, helping you see a simpler,
better path forward.

If you do not have a clear way to reproduce the behavior, be extremely careful
to protect environments showing the behavior from your experiments. Look
carefully for ways to falsify your theory with pre-existing data, as that
rarely damages unexplained behavior.

.. _heisenbugs: https://en.wikipedia.org/wiki/Heisenbug
.. _collect data: https://github.com/statsd/statsd
.. _run experiments: https://github.com/github/scientist#alternatives
.. _clearer understanding of the issue: /understanding-problems.html
