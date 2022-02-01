I am not a software engineer.

They clearly exist (NASA has a lot of them), but I've never worked with one.

Engineering is crucial when lives are at stake, but it's overkill for most
software.

Do not confuse "engineering" with "applying basic rigor." They are not the same
thing, and most software developers do neither.

Note that this question ties closely to the "quality is finite" essay -
engineering is an approach that can be applied to get really high quality on
several specific axes, reliability and robustness being two of the big ones.
Efficiency is another value FAMANGs tend to apply the engineering approach to.

I put a few thoughts about this on HN:
https://news.ycombinator.com/item?id=19965640

Quoted for durability:

========================

I think software systems whose failure directly jeopardizes human lives should
be engineered, and should be defined and enforced legally. Systems that don't
directly risk human life should not be so constrained.

Defining that standard and enforcing it is a huge task which could easily go
very wrong.

Businesses would of course be free to apply the "engineered" standard to any
systems they choose to. Outside of mission-critical systems operating at
gigantic scale (FAAMANG-level) I doubt it would often be profitable to do that.

The hypothetical standard would also be less relevant when building
proofs-of-concept, so long as the POC is not usefully deployable (if it is
there's risk of someone deploying it despite it being unsafe).

In the end, most software does not put human lives directly at risk. Acting
like it does would waste resources and doom many small businesses whose profit
margins couldn't absorb the costs of genuine engineering (it could kill several
companies I have worked for).

Even software systems that do risk human lives don't do so in all subsystems -
as far as I know, painting a mural in your skyscraper's lobby requires no
engineers to be involved. Similar distinctions may be reasonable in
sufficiently-isolated components of software packages that do some
life-protection tasks. Maybe allow a formal verification to show that subsystem
X cannot impact the critical subsystems and therefore does not need the same
level of rigor?

========================

More thoughts on this, slightly massaged from a chat with Austin Lawrence:

Engineering, to me, is about applying knowledge of inviolable laws of nature or
mathematics (insofar as we understand them) to optimize a system's behavior to
meet specific tolerances for specific variables.

EE, geological, mechanical, and so on, are all real engineering disciplines.

Most software is actually crafted, not engineered - we work more like
carpenters. Some rigor, but mostly instinct, aesthetics, and a good working
knowledge of our tools.

That's much cheaper and much faster, at the cost of not being predictable or
robust.

You bring in the engineers to figure out how to make the architect's beautiful
bridge meet the required constraints, and to help him re-envision if it cannot
be done.

==========================

An insightful pair of posts from Hacker News:

https://news.ycombinator.com/item?id=30000821

> I come from an aerospace engineering background (did structural engineering
> on commercial aircraft that were in the design and approval stages) and am in
> software now (games). I've had two different takes on this. Neither is
> perfect. Would appreciate comments on them.
>
> (a) If it's regularly expected that you ship bugs, you might be in a discipline that is distinct from engineering.[0]
>
> (b) If you can usually reach for an abstraction to save you, you might be working in something that isn't engineering.[1]
>
> [0] If software is engineering, then it's the only engineering discipline I'm
> aware of in which the participants are regularly expected to produce
> deliverables they don't fully understand. What do I mean by that? Well, if we
> software peeps fully understood our deliverables, we wouldn't have bugs, or
> at least, we'd always know what bugs are there. If as a structural engineer I
> had delivered a final draft of an analysis document which showed that I
> didn't fully understand the part and how it would perform, my boss would not
> have been pleased. Most software bugs are treated more casually than that, so
> we clearly have a tolerance for delivering work that we don't fully
> understand.
>
> You might take issue with the idea that I "fully understood" a structural
> part. Fair. When I calculated the strength of a beam in a thrust reverser I
> didn't understand the individual molecular interactions, I didn't need to
> know if the metal was of a body-centered cubic crystal structure, etc. But
> this is because I was able to apply well-understood and rigorously accepted
> simplifying assumptions that were conservative (from the point of view of a
> factor of safety), and fully encapsulated all the understanding I needed to
> produce a part fit for use.
>
> [1] This feels like the more flawed of the two proposals, because I expect
> EEs can do this. Control systems folks can definitely do this, and I would
> absolutely call them engineers.


https://news.ycombinator.com/item?id=30001488

> How about this one:
> (c) If your project assumes the underlying device/system will behave exactly
> as it is told to, then you might be in a discipline that is distinct from
> engineering.
>
> This means "engineering" would include some software projects (like
> fault-tolerant system design), but exclude many others (like most
> desktop/mobile/web apps, perhaps with components like databases being
> exceptions).
>
> My rationale for this is that, best as I can tell, traditional engineering is
> (for the lack of a better phrase) about "taming the real world"—which doesn't
> always behave the way you tell it to, because it's inherently uncertain,
> failure-prone, and impossible to model exactly. So if your task is dealing
> with that, then you're doing engineering. Whereas if your main problem is
> coming up with the correct specification—but you assume it will be executed
> faithfully—then it's not really engineering per se, but something else (not
> sure if we have a name for it).
>
> Thoughts?
