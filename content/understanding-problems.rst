Understanding Problems
======================

:date: 2013-01-01
:category: fundamentals
:summary: To understand problems, you must understand understanding problems...

There is no way to prove you have understood a problem.

It is a fuzzy, intuitive endeavor, more art than science, more craft than
engineering. It requires unending patience, infinite care, and obsession with
the tiniest details.

You cannot truly understand problems without an insatiable need to understand
the whole, no matter how complex it is. Only a deep-seated hunger to know will
compel you into every last corner, driven more by obsessive curiousity than the
need to solve.

Alas, the world is not perfect, and humans `have very small brains`_. There
will always be unseen flaws in your grasp on a problem.

.. TODO Hyperlink to 'quality is finite'.

The deep magic lies in knowing when you have understood a problem deeply enough
to solve it well enough for the current context. No team has enough resources
to solve all its problems well.

.. TODO Figure out where the following blocks on knowing what's worth
   understanding belong.

   comment from Dad - knowing whether a problem is *worth* understanding/solving
   is HUGE.

   Is that part of understanding problems, or a separate skill? Certainly they're
   related, at the very least.

   Another aspect of this is knowing how well a problem must be solved - because
   quality is finite, you need to know where to spend that quality, and the
   fundamental unit of quality is problem comprehension. Some problems just don't
   need to be solved perfectly.

There is no escape from implementation - actually trying an idea is the only
way to see if it conforms with reality. Thus, the best test for deep
understanding of a problem is implementation.

If your solution surprises and delights its users, and experts describe it as
'simple' or 'beautiful', you have almost certainly understood the problem
deeply. The first is insufficient on its own, because people are so used to
awful software [1]_.

Incarnating ideas is difficult, time-consuming, and expensive. Thus, it is a
big win to catch flaws in your design as soon as possible.

This is why jumping directly to coding, while sometimes productive, is often
a net loss. You can go days, weeks, or even months before discovering a fatal
flaw in your solution, when you could have caught the issue by thinking for
another hour or two, before a single line of code was written.

.. TODO hyperlink 'required level of quality' to the 'quality is finite' essay.

.. TODO Expatiate on the subtleties in this unfinished paragraph. There are
   many. That might take the form of several linked essays?

Time spent understanding the problem reduces the probability of a fatal flaw in
the solution. How much time you should take depends on the value of having a
solution, how much the solution's value hinges on level of quality, and the
consequences of an unforeseen fatal flaw.

.. TODO Split the following paragraph out into its own essay, on
   'Specifications'?

.. TODO Explain when a spec is high-value and when it's low-value. I'm assuming
   it's low-value sometimes, but I'm not sure why exactly I believe that, and
   it may not be true. This probably belongs in the spec essay.

One way to think through a problem is to describe it and the proposed solution
in written form. A written description of a proposed solution is often called a
'design document' or 'specification' (the latter is usually much more detailed
than the former). Such a document lets you explain your solution to people
without talking to them, and thus lets people see how well you understand the
problem out-of-band. Of course, that does not guarantee correct understanding,
because `humans make mistakes`_.

.. TODO This is the perfect place to segue/link to proof-of-concepts,
   prototypes, and production software.

That's why staying focused on implementation is critical. Writing
proof-of-concept solutions for the hard parts of a problem is a great way to
validate your understanding at lower cost than a full implementation. You pay
only for writing the hard parts, not the copious amounts of glue that holds a
system together, and you pay only enough for each POC to verify that you have a
workable solution, since it does not need to be production-ready.

.. TODO Remind people to never write POCs that *could* be deployed to prod.
   If you have done that, you have produced a prototype or crappy software, not
   a POC, by definition.

Of course, even for proof-of-concepts, you should have a decent idea how you
plan for it to work before building. As mentioned, finding fatal flaws the hard
way is not ideal.

Whether production software or a POC, what are some indicators you should think
more before building something?

* You cannot explain the problem clearly to a newcomer.
* You cannot propose a solution to the problem.
* You can find holes in your proposed solution.
* Someone asks you a question about the problem you have a hard time answering.
* Someone dislikes your proposed solution, and can explain why.
* Someone points out a hole in your proposed solution.

What are some indicators it's time to start building?

.. TODO Find source for 'grandmother' quote. Many say Einstein, but it is not
   at all clear who actually said it, based on some Googling.

* When you explain the problem to an expert who is not familiar with it, they
  immediately propose reasonable solutions.
* You can explain the known solutions to a layperson, as well as their pros and
  cons.
* You can explain the problem, and your solution, to a layperson clearly.
  "If you cannot explain it to your grandmother, you do not really understand it."
* You can design a new solution to the problem with little effort.

Remember - these are only guidelines, and not a complete set. Understanding
problems is an art, not a science.

.. [1] For instance, if you have only used
    `Harvest <https://en.wikipedia.org/wiki/CA_Software_Change_Manager>`_ for
    version control, anything that doesn't occasionally eat your files would be
    amazing. However, that doesn't make `CVS <http://www.nongnu.org/cvs/>`_ a
    good version control system.
.. _have very small brains: https://www.cs.utexas.edu/~EWD/transcriptions/EWD03xx/EWD340.html
.. _humans make mistakes: /fail-gracefully.html
