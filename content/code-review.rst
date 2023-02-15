Code Review
===========

:date: 2013-01-01
:category: workflow
:summary: First drafts are wrong, but the author can't see where.

.. Figure out where to include these links:
   https://mtlynch.io/code-review-love/
   https://mtlynch.io/human-code-reviews-1/

First drafts have mistakes. If they didn't, we'd call them "final copies".

The draft's author is too close to it to know what mistakes he has made. Thus, a
maker who wants to create good things will discuss his work with others, so he
can find out where he has gone wrong.

This is a good idea in every field, and thus has many guises. Programmers have
two major forms, `code review <http://en.wikipedia.org/wiki/Code_review>`__ and
`usability testing <http://en.wikipedia.org/wiki/Usability_testing>`__. If the
reviewer tries the code he's inspecting, code review can involve some degree of
usability testing.

There are many tools to help with code review, ranging from the humble `diff
<http://en.wikipedia.org/wiki/Diff>`__ to systems like
`Gerrit <https://code.google.com/p/gerrit/>`__.

When a reviewer doesn't understand code, he should ask for clarification.

When a reviewer finds something that looks wrong or dangerous, he should ask
the author why it's written that way, and whether they're aware of the
potential issues.

In general, a reviewer should ask the author why the code is right, rather than
telling them why it's wrong. This helps keep the conversation focused on
improving the code, helps keep egos in check, and helps the author learn from
the reviewer (people rarely listen when given advice, but answering questions
requires either thought or a willingness to look stupid).

Every point a reviewer brings up needs a response from the author. The wise
forms of response are explanations and patches.

If a reviewer's question leads to the conclusion the code is wrong, fix the
code. It's polite to let him know a fix is coming.

If a reviewer has a hard time following a four-line if condition, don't explain
what it does. Instead, turn those four lines into assignments to variables with
clear names, then use those variables in the condition. That way, the reviewer
and future maintainers can understand it. Let the reviewer know the next patch
will clarify things, so he doesn't think you ignored him.

If a reviewer's question does not inspire a code change, say why. This is where
valuable discoveries are made. Don't be shy of asking questions in your
responses - the principle goes both ways.

Don't tell people why they're wrong. Ask them why they're right.
