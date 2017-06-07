Commenting Code
===============

:date: 2013-01-01
:category: docs
:summary: Marvelous proofs don't fit in the margins.

.. The paragraph on readability could (should?) be expanded to its own essay.

`Programs must be written for people to read`_.

Readability may be the most valuable trait a program can have, including
correctness. Perfectly correct programs are vanishingly rare, and readable
programs are far more likely to get bugfixes.

Most programming languages support comments - blocks of text which do not
change program behavior.

When writing comments, the tension between readability and computability
vanishes. Their sole purpose is to improve readability.

Comments should not change the program's behavior. `When they do`_, they are
no longer comments, just obfuscated code.

That said, it's `just`_ `fine`_, `maybe`_ `even`_ `wise`_, to write tools that
extract and process comments from a codebase.

Commenting programs well requires the understanding that
`every line of code is a user interface`_. Good user interfaces are simple and
self-explanatory, and so should be each line of code. If a line is unclear,
clarify it instead of commenting it. Improving names helps, as does `adding`_
`new`_ ones.

Inline comments `can indicate poor code`_, but they do have several important
uses. They are the best way to point out potential issues, to explain why a
given algorithm or implementation was chosen, and to document workarounds (make
sure to include all relevant URLs).

.. Elaborate on next paragraph. It's true, but make it clear for a novice what
   it actually means, and why it matters.

Every abstraction in a program should have a comment explaining what it is and
how to use it (if the language supports `docstrings`_, use them for this purpose).

That standard can be `enforced automatically`_, and with it your tools can
help you understand abstractions quickly, by showing their documentation
whenever and wherever you need it.

.. _Programs must be written for people to read: https://mitpress.mit.edu/sicp/front/node3.html
.. _When they do: http://symfony.com/doc/current/bundles/SensioFrameworkExtraBundle/annotations/routing.html
.. _just: https://www.python.org/dev/peps/pep-0257/
.. _fine: http://usejsdoc.org/
.. _maybe: http://ternjs.net/doc/manual.html#plugin_doc_comment
.. _even: http://jedi.jedidjah.ch/en/latest/
.. _wise: http://www.naturaldocs.org/
.. _every line of code is a user interface: http://www.yacoset.com/Home/every-line-of-code-is-a-user-interface
.. _adding: http://www.refactoring.com/catalog/extractVariable.html
.. _docstrings: https://en.wikipedia.org/wiki/Docstring
.. _new: http://refactoring.com/catalog/extractMethod.html
.. _can indicate poor code: https://sourcemaking.com/refactoring/comments
.. _folding: http://codemirror.net/demo/folding.html
.. _enforced automatically: /automate-everything.html
