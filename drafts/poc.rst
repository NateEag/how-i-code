A program can be classified as either a proof-of-concept, a prototype, or a
product.

A proof-of-concept (POC) is, by definition, not fit for an end user's purpose.
It usually seems meaningless to a layperson. It is a collection of software
components whose feasibility was unknown or whose nature was undecided before
the POC was written. The user interface is the bare minimum required to
demonstrate that the core of an idea is workable.

.. TODO Link 'specification' to the essay(s?) on specs.

Before writing a proof-of-concept, articulate clearly in a draft specification
the core behaviors that must be working to consider it a success. Have another
person give you a sanity check on the spec'd goals before you start making the
POC itself. This is especially important if it involves integrating or
embedding existing programs, as it is easy to see two processes technically
communicating and think "It works, I'm done!", when some crucial subtlety is
malfunctioning but you have not noticed.

As mentioned above, a proof-of-concept should *not* be a usable tool. If it is,
you have a prototype, not a proof-of-concept. That means you spent too much time
building it, and that you are at risk of people pushing it into production
service even though it is not ready,

Programmers write proofs of concept to learn things they did not know:

* Whether an idea is feasible
* Whether an idea is reasonable

A prototype is used to


------------------

TODO Explain turning a POC into a task list for building a product (code reviw
the diff, basically).

TODO Explain that the first step for taking a POC further is a simple code
review. The code itself will be junk in a POC, so it's not about code quality.
The review is to get another programmer to double-check the basic approach for
completeness, sustainability, and sanity. By consistently doing a review at
this phase, you should significantly reduce the amount of time spent making and
polishing changes that contain fundamental errors. This may entail some updates
to the code review essay (which I suspect needs to be split into several essays
anyway).
