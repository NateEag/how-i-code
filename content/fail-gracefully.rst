Fail Gracefully
===============

:date: 2013-01-01
:category: meta
:summary: "...because not failing is not an option."

People make mistakes.

Every human endeavor shows this to be brutal truth, but it stands out starkly
in software, where years of work can be undone in microseconds.

Despite this, most software punishes us terribly for mistakes.

Undo, for instance, should make changing our minds less dangerous. Instead,
most implementations drop all divergent histories when you redo, making
it useless for anything more than typo fixes.

`Emacs and Vim </know-your-tools.html>`__ avoid this pitfall, but they still
`need <http://www.dr-qubit.org/emacs.php#undo-tree>`__
`plugins <http://sjl.bitbucket.org/gundo.vim/>`__ to match Adobe Photoshop's
History palette.

Software should embrace our failures, errors, mistakes, and regrets.
Rather than shackling us with safety, it should let us wander freely and help
us homeward when we lose our way.
