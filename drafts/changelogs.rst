I feel like I wrote this down before somewhere but I've lost track of where.

I spent several years wondering on and off how new developers could find
now-deleted code that might be useful to them, if only they knew it was buried
deep in the repo's history.

I was first introduced to this problem by this thread discussing
how Emacs handles it:

https://news.ycombinator.com/item?id=10839146

I finally realized that the answer is to maintain a [project
changelog](https://keepachangelog.com) in the project's codebase
under version control.

As long as every meaningful change is mentioned in it, a developer can skim
through the high-level view of history to see if there has ever been a feature
like the one under consideration. Further, the commit history of the changelog
itself will often point you towards changes involving a specific feature.

One difficulty there is that the history is more useful to developers if it
mentions changes to developer tooling and major refactorings, but those are
just noise to end-users as long as the user interface has not changed.

That suggests making an extension to the Keep A Changelog format so the full
changelog can be filtered for end user viewing vs. developer usage. A
reasonable one might be to add 'Tooling' and 'Refactored' `change types`_,
representing changes to developer tooling and refactorings, respectively (if
you want to keep the past-tense verbs convention, you could go with
'Toolsmithed').

Note that changelogs and release notes are strictly to make humans aware of
changes, so developers, maintainers, and users can be aware of what new
features and bugfixes are available to them in an upgrade, as well as the
history of how the program has changed over time.

Another way of saying that is that changelogs are to help you decide when it's
time to upgrade.

They're of almost no use when actually upgrading. There is no substitute for
rigorously testing how the new program fits into your use cases. Do not just
bump your version number and upgrade in production.

.. _project changelog: https://keepachangelog.com/
.. _change types: https://keepachangelog.com/en/1.0.0/#how
