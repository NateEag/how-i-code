I feel like I wrote this down before somewhere but I've lost track of where.

I spent several years wondering on and off how new developers could find
now-deleted code that might be useful to them, if only they knew it was buried
deep in the repo's history.

I was first introduced to this problem by this thread discussing
how Emacs handles it:

https://news.ycombinator.com/item?id=10839146

I finally realized that the answer is to maintain a [project
changelog](https://keepachangelog.com/en/1.0.0/) in the project's codebase
under version control.

As long as every meaningful change is mentioned in it, a developer can skim
through the high-level view of history to see if there has ever been a feature
like the one under consideration. Further, the commit history of the changelog
itself will often point you towards changes involving a specific feature.

One difficulty there is that the history is more useful to developers if it
mentions changes to developer tooling and significant refactorings, but those
are just noise to end-users.

That suggests making an extension to the Keep A Changelog format so the full
changelog can be filtered for end user viewing vs. developer usage, but I'm not
sure what it might be.
