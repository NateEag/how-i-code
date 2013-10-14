When you’re updating untracked files (like third-party deps managed via
Composer or NPM), you probably want to do it on post-checkout and post-merge,
because merges (and pulls, which cause merges) do not trigger the post-checkout
hook.

You might even want to do it on post-commit, to make rebasing a happier thing
(though it still wouldn't cover the case where you have a conflict while
rebasing and want to test after resolving and before continuing).
