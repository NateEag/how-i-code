My understanding of technical debt has matured over the years, due largely to:

.. TODO Link the quality is finite essay once it exists.

1) My own realization that quality is finite,

2) Reading an article (which I have lost the link to) that pointed out
   technical debt is always a human problem. No one sat down and said "Let me
   write a bunch of crappy code on purpose", so before you try to fix it, you
   need to understand the human and organizational factors that brought it
   about in the first place.

Anyway, my goal at present is not to write an essay on technical debt.

I just want to save a link to a good article that pertains to technical debt,
even if indirectly:

https://danluu.com/wat/

Specifically, it talks about "normalization of deviance".

It's one thing to have technical debt, or to take it on intentionally - it's
another entirely to insist that you don't have any when you actually have lots.

Here is an article on the subject of rewrites and how you do them. The author
claims to have done two major ones by the strategy I would naively endorse at
this point: keep the UI working the same throughout, draw hard internal API
lines, and work systematically towards removing the old problems. Well worth
reflecting on.

https://increment.com/software-architecture/exit-the-haunted-forest/

For teams that have on-call rotations, I think it would be effective for the
on-call dev to treat tech support tickets and tech debt as their main focus.
I've been on a team that linked on-call duty with tech support tickets, and it
worked well.

I think if you added tech debt efforts as their main focus when they aren't
responding to a page or dealing with support tickets, you'd see support ticket
response times plummet - every serious dev has a laundry list of issues they'd
love to see fixed, and if all that's between them and working on those is the
support issues, well... they'll go away fast.

There's also a nice incentive alignment between being on call and deploying
tech debt fixes - if you break something, you're going to be paged. It will
temper impulsive, poorly-tested refactors into something more sustainable.
