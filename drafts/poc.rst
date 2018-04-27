A program can be classified as either a proof-of-concept, a prototype, or a
product.

A proof-of-concept (POC) is, by definition, not fit for an end user's purpose.
It usually seems meaningless to a layperson. It is a collection of software
components whose feasibility was unknown or whose nature was undecided before
the POC was written. The user interface is the bare minimum required to
demonstrate that the core of a programmer's idea is workable.

Before writing a proof-of-concept, articulate clearly the core feature you need
to see working. This is especially important if your POC involves integrating
or embedding existing programs, as it is easy to see that the two processes are
communicating and to think "It works, I'm done!", when in fact some crucial
subtlety is actually malfunctioning and you just haven't noticed it yet.

As mentioned above, a proof-of-concept must *not* be a viable product. If it
is, you have a prototype with major holes, not a proof-of-concept, and you are
at risk of users pushing it into production service even though it is not ready
and will bite them.

Programmers write POCs to learn things they did not know:

* Whether an idea is feasible
* Whether an idea is reasonable

A prototype is used to
