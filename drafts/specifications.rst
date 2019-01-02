I've been vaguely pondering how to keep specs and code tightly synchronized for
the past few years.

I've concluded that specs should be kept in text-based files and
collaboratively edited much as software is, since specs are living, changing
documents. It makes sense to organize a program's source code by features and
to keep each feature's specification with the code implementing it.

That way, a workflow where anyone may suggest changes to a spec, and proposed
changes can be previewed, modified, and discussed by the team is enabled, much
as programmers do with code review.

A website can be auto-generated from the main line of development, serving as
the canonical version of the spec.

I have also considered an idea I have nicknamed the 'specref' - a reference to
a particular section of the spec, including a version number.

The format for the specref is as yet undefined. Path access is not an
unreasonable idea, as it provides both hierarchy and could map nicely to
keeping disparate documents in the project repo that are used to collectively
generate the full spec. You would still need a reasonable prefix, though, and
one that reads cleanly in code comments.
spec[@version]:feature/section/subsection[:startPos[:endPos]]? An example might
look like spec@1.0.0:contacts-import/csv/validations/. Start/stop indices are
probably too simplistic, but maybe instead we should ban them and force you to
structure your doc finely enough that sub-ranges aren't necessary?

If programmers include specrefs in all commit messages, and the specrefs
provide enough resolution, it becomes feasible to see which parts of the
specification have been implemented at a given point in the project's history.

Commit messages are not the only places specrefs could be relevant. Rather than
duplicating the justifications for user interface decisions in code comments,
programmers could provide specrefs pointing to. Given a little tooling,
maintainers could quickly see not just the relevant part of the spec, but how
it evolved over time, and even the discussions that led to the spec being what
it is.

Functional tests could also be annotated with specrefs, giving rise to the idea
of 'spec coverage' - you can measure which parts of your specification are
actually verified by functional tests. I suspect that metric would be far more
useful than code coverage to a project.

Generating the spec document itself from the various source files is actually
an interesting problem. I've wanted to do a human-friendly centralized wrapper
around Git or similar for a static CMS for quite a while, hiding the gory
details of branching behind a "Suggest A Change" button, and offering a simple
"Publish" button that generates the static site and pushes it to a webserver,
and that system would be exactly what I want for letting normal people
contribute to the specs. It just needs to allow access only to the specs
somehow...