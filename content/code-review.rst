Code Review
===========

:date: 2013-01-01
:category: meta
:summary: First drafts are always wrong.

First drafts have mistakes.

The draft's author is too close to it them mistakes clearly. Others, however,
can see them more clearly.

An author who wants a better draft will ask for feedback and improve their work
based on it.

This is a good idea in every field, and thus has many names. In programming we
call it `code review <http://en.wikipedia.org/wiki/Code_review>`__.

There are many tools to help with code review, ranging from the humble `diff
<http://en.wikipedia.org/wiki/Diff>`__ to full solutions like
`Gerrit <https://code.google.com/p/gerrit/>`__.

Some advice for reviewers:

When a reviewer finds something confusing, he should ask for clarification.

When a reviewer finds something that looks wrong or dangerous, he should ask
the author why it's written that way, and whether they're aware of the
potential issues.

The general principle here: Reviewers should ask the author why they're right,
rather than telling them why they're wrong. It makes the discussion more
productive by helping keep egos in check.

Some advice for authors:

Every point a reviewer brings up needs a response. For any point the best
response may be a patch or an explanation.

For instance, if a reviewer has a hard time following some logic, don't explain
what's happening directly to him. Improve the code's readability until he can
follow it, so that future maintainers are also aided by the discussion.

If an explanation is best, consider including it as a comment for the benefit
of future maintainers.
