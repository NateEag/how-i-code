Automate Everything
===================

:date: 2013-01-01
:category: workflow
:summary: Good programmers are lazy.

Given time and training, a human can do suprisingly well at designing data
structures and algorithms.

Given time and training, a human will still do surprisingly poorly at
maintaining data structures and executing algorithms.

Humans should do the creative work. They should leave the bookkeeping to
computers. That is the essence of programming.

If it costs more to automate a process than to perform it manually, then
automating it may be a poor business decision. Beware the false economy,
however - a task that is done only once is a very rare creature.

Many programmers do not realize how many of their daily tasks should be
automated. Here are a few examples of automatable tasks that are often done
manually (or worse yet, not at all).

* Checking that code meets style guidelines.
  `Most <https://pypi.python.org/pypi/pep8>`__
  `languages <http://clang-analyzer.llvm.org/>`__
  `have <http://www.jshint.com/about/>`__
  `tools <https://github.com/squizlabs/PHP_CodeSniffer>`__
  `for <https://github.com/bbatsov/rubocop>`__
  `this <http://checkstyle.sourceforge.net/>`__. Add the one(s) you need
  to your version control hooks, and integrate them into your editor.
  If your editor doesn't support external analysis tools, switch to a better
  editor.
* Making a project's distributables. Each of them should be buildable in one
  step. They should be built regularly, to verify the build process has
  not been broken. `There <http://www.gnu.org/software/make/>`__
  `are <http://ant.apache.org/>`__ `tools <http://www.phing.info/>`__
  `for <http://buildbot.net/>`__ `this <http://maven.apache.org/>`__, too.
* Installing a distributable should be automated (a human may need to answer
  a question or two, but configurable defaults are usually better).
* If backwards compatibility matters (and it usually does), it should be
  tested automatically.
