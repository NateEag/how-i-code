Team Ownership
==============

:date: 2013-01-01
:category: workflow
:summary: If only one programmer owns a project it is dying.

It's the bus factor. The programmer dies, changes jobs, gets bored, gets
amnesia, receives new priorities... The list is infinite.

Note: it's okay for projects to die. If necessary they can be resurrected, and
most projects aren't that important. Programs dying can be natural selection in
action.

If you're a business, though, you really don't want your core products to die.
Not until you've extracted the value you can from them.

We've all seen individual ownership. Team ownership is much rarer.

What does it look like?

Team ownership means no one contributor matters as much as the team
collectively. We want the team to work smoothly and effectively, and we want
that more than we want to move fast as individuals.

That means communication and collaboration are huge and we spend time on those
activities (and tools to make those work better). It also means tooling
matters, because shared tooling levels up everyone on the team, not just the
one crazy dude who uses a tricked-out Vim.



Specifically:

## Pre-Merge Code Review

Pre-merge code review for all non-emergent changes. It's okay to merge without
an approval because disasters and the like happen but doing so should trigger
loud warning emails so we as a team know to go back and review it
retroactively. If it happens too often, the team leader needs to hash out the
conflict with the offender.

In the short term, yes, that slows you down. In the long term, it catches a lot
of bugs, raises code quality a lot, and makes it way more common for the whole
team to know the codebase reasonably well (because you're all reading each
other's work regularly).


## Maintain A Changelog

So all team members can see the history. Huge communication win.


## Maintain Specs In The Project

That way everyone is always on the same page and programmers can keep specs up
to date with changes.

You should also publish those specs as static HTML to a project docs site,
because the team isn't just programmers. Between the changelog and specs, once
you teach people to read the docs, they can answer tons of questions on their
owns.

As much as possible the specs should actually drive codebase behavior (but
that's a different essay).

TODO Write essay about intersection of specs and automation.


## Build Features In Branches

and (see essay on POCs, prototypes, etc) you do it in hunks, starting with POC
scope/plan doc to building the POC to a draft spec to actually building it,
with peer review forming a loop for each step.

That gets you big wins in terms of teammates catching flaws in your approach
before you discover them the hard way yourself.


## Use a VCS with real branching to enable these workflows

because SVN sucks for branching and sharing work, and therefore for pre-merge
code reviews, making it a terrible tool for teams.


## be deployable by everyone on the team

If just one person can deploy it, they're the de facto owner, and
everyone's screwed when the deployer is bussed.


## has an issue triage rotation (including on-call for off-hours)

and sticks to it (trading shifts is fine, as is hopping on emergencies - poking
in when you're off-duty is not, because it burns you out and encourages other
people not to own their fair share of the work)


TODO Link to "Don't Be A Hero", because that's a special case of individual
project ownership.
