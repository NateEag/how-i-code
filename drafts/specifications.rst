I've been vaguely pondering how to keep specs and code tightly synchronized for
the past few years.

I've concluded that specs should be kept in text-based files and
collaboratively edited much as software is, since specs are living, changing
documents.

It makes sense to organize a program's source code by features and to keep each
feature's specification with the code implementing it.

That way, a workflow where anyone may suggest changes to a spec, and proposed
changes can be previewed, modified, and discussed by the team is enabled, much
as programmers do with code review.

.. TODO Link 'changelog' to the changelog article once it's published.

The project's changelog entries should all link to the relevant specifications,
making it much, much faster to hunt down the gory details of a given change, as
the git history of the spec should help a dev figure out what commits were made
to support a given change quickly (see the specref idea below for some thoughts
on how linking could work).

A website can be auto-generated from the main line of development, serving as
the canonical version of the spec. It would be helpful to have the generation
process generate redirects for renamed articles from git history, because specs
are documents that get referenced by hyperlink all the time. Note that if you
generate anchor IDs from your document's internal titles, you will want to use
some of the
[clever](https://ffeathers.wordpress.com/2013/09/22/redirecting-anchor-links-on-web-pages/)
[workarounds](http://stackoverflow.com/questions/1305211/javascript-to-redirect-from-anchor-to-a-separate-page)
for URL anchors not being sent to the server so that renamed anchors also Just
Work indefinitely.

I have also considered an idea I have nicknamed the 'specref' - a reference to
a particular section of the spec, supporting an optional version number.

The format for the specref is as yet undefined. Path access is not an
unreasonable idea, as it provides hierarchy and could map nicely to keeping
disparate documents in the project repo that are used to collectively generate
the full spec. You would still need a reasonable prefix, though, and one that
reads cleanly in code comments.
spec[@version]:feature/section/subsection[:startPos[:endPos]]? An example might
look like spec@1.0.0:contacts-import/csv/validations/. Start/stop indices are
probably too simplistic, but maybe instead we should ban them and force you to
structure your doc finely enough that sub-ranges aren't necessary? No, don't
require that - just warn people clearly that structuring is superior to
indexing.

Projects using specrefs would need a tool to update specrefs across the project
whenever someone changes an anchor's identifier (e.g., changes a section title)
to make sure they don't drift out-of-date. A corresponding tool to check that
all specrefs are valid would also be important.

If programmers include specrefs in all commit messages, and the specrefs
provide enough resolution, it becomes feasible to see which parts of the
specification have been implemented at a given point in the project's history.

Commit messages are not the only places specrefs could be relevant. Programmers
can use specrefs in comments to link code directly to the spot in the
specification that describing the behavior being implemented. Given some
tooling, maintainers could see not just the relevant part of the spec, but how
that part of the spec evolved over time, and if code review tools integrate
support, even the discussions that led to the spec's current state.

Functional tests could also be annotated with specrefs, giving rise to the idea
of 'spec coverage' - you can measure which parts of your specification are
actually verified by functional tests. I suspect that metric would be far more
useful than code coverage to a project.

Generating the spec document itself from the various source files is a mildly
interesting problem. I've wanted to do a human-friendly centralized wrapper
around Git or similar for a static-site CMS for quite a while, hiding the gory
details of branching behind a "Suggest A Change" button, and offering a simple
"Publish" button that generates the static site and pushes it to a webserver,
and that system would be exactly what I want for letting normal people
contribute to the specs. It just needs to allow access only to the specs
somehow. If only Git had a per-repo access control mechanism built-in.
