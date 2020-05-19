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
