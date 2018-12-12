Version Control
===============

:date: 2013-01-01
:category: workflow
:summary: [insert witticism here]

People make mistakes.

We see it in every human endeavor, but it stands out starkly in software, where
months of work can be annihilated in moments.

This is especially true for programmers, who demand power and flexibility from
their tools, rather than conservative safety.

To keep commands like 'rm -rf' from irretrievably ruining our projects, we use
`version control`_.

TODO Explain somewhere that a commit summary should always start with 'Add'
(new feature, usually new UI associated), 'Remove' (take away feature or UI, an
important thing to do whenever possible), 'Rename', 'Fix' (change program
behavior to match intended behavior), 'Optimize' (make something run faster),
'Refactor' (improve internal implementation without changing perceivable
behavior), 'Explain' (write documentation), or 'Specify' (define expected
behavior). These are all related to the fundamental skill 'Changing programs',
because these are precisely the categories of changes you can make to a program.

Someone else's list of patch summary verbs, which points out that 'Reformat' is
also a valid option. They have a few others I'm not sure I quite agree with,
but it's still a decent list:

https://news.ycombinator.com/item?id=18663520

TODO Add a refined version of this HN post of mine to the essay:

https://news.ycombinator.com/item?id=18664163

.. _version control: http://en.wikipedia.org/wiki/Revision_control
