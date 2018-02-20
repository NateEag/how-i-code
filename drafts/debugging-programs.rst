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
until you derive a plausible explanation for it, then look for ways to falsify
or confirm your theory. A scientist might call these experiments, but
programmers usually call them tests.

If a test seems hard, risky, or tricky to reproduce, look for a simpler one.
Most programs generate a lot of diagnostic and historical data, so when you
want to know something, see if you can find it in the existing data.

If you do not have a clear way to reproduce the behavior, be extremely careful
to protect environments showing the behavior from your experiments. Look
carefully for ways to falsify your theory with existing data, as that rarely
damages unexplained behavior.

If you cannot falsify from existing data, you will have to run experiments. A
test that does not write to its environment should be incapable of making
unexpected behaviors vanish.

However, it is extremely difficult, perhaps impossible, to construct a
read-only experiment on modern computer systems. Even simple programs often
write multiple logfiles during normal usage, which could theoretically
influence the behavior you are investigating.

When testing behavior that you have only seen on one computer, remember that
tests run as a different user may not be safely isolated. If either account has
write access to a shared data source, or if the experiment is run with
administrative privileges, it is capable of influencing the unexplained
behavior.
