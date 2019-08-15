Debugging Programs
------------------

:date: 2013-01-01
:category: fundamentals
:summary: Once you have understood a problem, it is nine-tenths solved.

.. TODO Break this essay into pieces. It's getting large and unwieldy.

.. TODO Consider extracting bug definition out to a core definitions doc for
   workflow?

A bug is a program behavior that does not match the expected behavior.

.. TODO Link 'behave as expected' to an appropriate essay, maybe something
   about gathering requirements and how what devs and normals expect are often
   quite different.

When a program does not behave as expected, it should be fixed.

The first step in doing so is to understand the behavior and the expectation.
Sometimes user expectations are the problem, in which case documentation and
user interfaces should be improved to stop misleading users. In other cases,
the program's behavior is bad, in which case the behavior should be changed.

If there is no formal definition of expected behavior, then classifying
behaviors as bugs is a subjective undertaking.

If you have a different support process for bugs than for feature development
(e.g. "Bug fixes are free but new features are not."), it is important to have
a way to know whether a behavior is a bug.

A specification is useful for defining expected behavior. Once a client agrees
in writing that the spec is an adequate description of what they want, the dev
team is responsible for delivering only what it describes.

Defining undefined behavior, redefining misfeatures, and defining new features
are all enhancements, not bugfixes. They should be handled and billed
accordingly.

A simplified litmus test: If a change requires a change to the specification,
it is an enhancement. If it does not, it is a bug fix.

To fix unintended or unexpected behavior, you must first understand the root
cause of the behavior.

In some cases, it's immediately obvious.

.. TODO Expound on 'collecting data'. There are many ways to do it in software.

When it is not, apply the scientific method. Collect data about the behavior
until you derive a plausible explanation for it, then design a simple, fast
experiment to falsify or confirm your hypothesis.

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

Finally, programmers have a great advantage that most experimental scientists
do not. We can read the definition of the program we are investigating. In most
cases we have the program's source code. In some cases we may not, but even
then it is possible to decode the bytes comprising the program and gain an
understanding of what they do, and there are tools to make that process easier
(though even those are rarely used, as hexadecimal instructions have not been a
preferred programming tool since the days of `punchcards`_). Reading code lets
you confirm hypotheses, rather than simply fail to reject them as the pure
scientific method must resign itself to. Be wary, however, of comprehension
errors in your reading, as they are extremely common. As a data collection
tool, reading code is the slowest option, but it can still be helpful in a
pinch. Make no mistake, it is a valuable tool, but not as helpful as you might
hope.

No one of these techniques is a silver bullet. The goal is to understand the
problem fully with minimal time spent. Combine them as needed to achieve that
goal. Do not prefer one excessively over the others, as no one of them is
always the best answer.

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

.. _punchcards: https://en.wikipedia.org/wiki/Punched_card
.. _heisenbugs: https://en.wikipedia.org/wiki/Heisenbug
.. _collect data: https://github.com/statsd/statsd
.. _run experiments: https://github.com/github/scientist#alternatives
.. _clearer understanding of the issue: /understanding-problems.html
