A program can be classified as either a proof-of-concept, a prototype, or a
product.

A proof-of-concept (POC) is, by definition, not fit for an end user's purpose.
It usually seems meaningless to a layperson. It is a collection of software
components whose feasibility was unknown or whose nature was undecided before
the POC was written. The user interface is the bare minimum required to
demonstrate that the core of an idea is workable.

Before writing a proof-of-concept, articulate clearly the core behaviors that
must be working to consider it a success. This is especially important if it
involves integrating or embedding existing programs, as it is easy to see two
processes communicating and think "It works, I'm done!", when some crucial
subtlety is malfunctioning but you have not noticed.

As mentioned above, a proof-of-concept must *not* be a viable product. If it
is, you have a prototype with major holes, not a proof-of-concept, and you are
at risk of users pushing it into production service even though it is not ready
and will bite them.

Programmers write POCs to learn things they did not know:

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
