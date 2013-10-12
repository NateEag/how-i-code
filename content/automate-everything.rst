Automate Everything
===================

:date: 2013-01-01
:category: workflow
:summary: Good programmers are lazy.

Given time and training, a human can do suprisingly well at designing data
structures and and algorithms.

Given time and training, a human can do surprisingly poorly at maintaining data
structures and executing algorithms.

Humans should do the interesting work. They should leave the bookkeeping to
computers. This is the essence of programming.

If it costs more to automate a process than to perform it manually, then it
automating it may be a poor business decision. Beware the false economy,
however - a task that is done only once is a very rare creature.

Many people do not realize how many of a programmer's daily tasks should be
automated. Here are a few examples of automatable tasks that are often done
manually (or worse yet, not at all).

* Checking that code meets style guidelines.
  `Most <https://pypi.python.org/pypi/pep8>`_
  `languages <http://clang-analyzer.llvm.org/>`_
  `have <http://www.jshint.com/about/>`_
  `tools <https://github.com/squizlabs/PHP_CodeSniffer>`_
  `for <https://github.com/bbatsov/rubocop>`_
  `this <http://checkstyle.sourceforge.net/>`_. Add the one(s) you need
  to your version control hooks, and integrate them into your editor.
  If your editor doesn't support external analysis tools, switch to a better
  editor.
* Making a project's distributables. Each of them should be buildable in one
  step. They should be built regularly, to verify the build process has
  not been broken. `There <http://www.gnu.org/software/make/>`_
  `are <http://ant.apache.org/>`_ `tools <http://www.phing.info/>`_
  `for <http://buildbot.net/>`_ `this <http://maven.apache.org/>`_, too.
* Installing a distributable should be automated (a human may need to answer
  a question or two, but configurable defaults are usually better).
* If backwards compatibility matters (and it usually does), it should be
  tested automatically.
