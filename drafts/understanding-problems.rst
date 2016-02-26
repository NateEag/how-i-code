Understanding Problems
======================

:date: 2013-01-01
:category: fundamentals
:summary: Understanding problems is an art, not a science.

.. TODO Reorganize and finish this.
   It seems to have roughly three parts:
      * Explaining that this is an art, not engineering
      * How to do it
      * How to tell when you've gotten there

What can I possibly tell people about understanding problems?

It requires unending patience, infinite care, and obsession with the tiniest
details.

You cannot truly understand problems without an insatiable need to understand
the whole, no matter how complex it is. Only deep-seated intellectual curiosity
will push you into every last corner, driven more by the need to know than the
need to solve.

It is an art, not a science or engineering discipline. As a consequence, there
is no algorithm for it - just instincts, mentors, and muses.

[comment from Dad - knowing whether a problem is *worth* understanding/solving
is HUGE.

Is that part of understanding problems, or a separate skill? Certainly they're
related, at the very least.

Another aspect of this is knowing how well a problem must be solved - because
quality is finite, you need to know where to spend that quality, and the
fundamental unit of quality is problem comprehension. Some problems just don't
need to be solved perfectly.]

What are some indicators that you have developed a deep understanding of a
problem?

* You have a solution that surprises and delights its users.
* You have a solution that experts describe as "simple" or "beautiful".

If you have both points, you have almost certainly understood the problem
deeply. The first is insufficient, because people are so used to awful software
that they find mediocrity surprising and delightful [1]_.

There is no escape from implementation - actually trying things is the only way
to see if ideas conform with reality.

Actually incarnating ideas is difficult, time-consuming, and expensive. Thus,
it is a big win to catch flaws in your design as soon as possible.

This is why jumping directly to coding, while it feels productive, is often
a net loss - you can go days, weeks or even months before discovering a fatal
flaw in your solution.

No human can have perfect understanding, so the possibility of hidden fatal
flaws always exists. However, striking the right balance between thought and
action can save large amounts of time.

This is the perfect place to segue/link to proof-of-concepts, prototypes,
and production software. You write POCs to verify whether your understanding of
a problem meshes with reality - whether your solution is actually possible. You
write prototypes to see how your perception of the problem meshes with that of
the end users. Finally, when confidence is high that the problem is
well-understood and your solution is promising, you build production software.

What metrics can be used to detect weak understanding short of implementations?
Every time you can avoid building a flawed iteration by deepening your
understanding, it's a huge win.

* When you explain the problem to an expert who is not familiar with it, they
  immediately propose reasonable solutions. That means your understanding was
  so clear you were able to pass it on to them in one pass.
* You can explain the problem to a layperson clearly ("if you cannot
  explain it to your grandmother, you do not understand it")
* You can explain the strong and weak points of any existing solutions.

There are also some negative tests - things which, if true, often indicate you
do *not* understand the problem deeply. What are they?

- Someone asks you a question about the problem you have a hard time answering.
- Someone does not like your proposed solution.

A truly skilled problem solver has surpassed all technique. Having mastered it,
they find technique boring. They will not tolerate complexity in their tools,
nor will they introduce it - they often prefer no solution to a burdensome one.

.. [1] For instance, if you have only used
    `Harvest <https://en.wikipedia.org/wiki/CA_Software_Change_Manager>`_ for
    version control, anything that doesn't occasionally eat your files would be
    amazing. However, that doesn't make `CVS <http://www.nongnu.org/cvs/>`_ a
    good version control system.
