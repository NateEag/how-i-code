Programs should do the right thing.

That is easier said than done.


Formal Methods
==============

One approach to making them Do The Right Thing is what computer scientists call
'formal methods'. Some interesting thoughts on those live here:

https://www.hillelwayne.com/post/why-dont-people-use-formal-methods/
https://infohost.nmt.edu/~al/cseet-paper.html

TODO Articulate when and how to apply what formal methods. Obviously they help
sometimes, but some of them are obviously overkill for some cases.


Automated Tests
===============

Automated testing is a way to check that programs still do what they have done
in the past. They are largely a tool for avoiding regressions. Do not
underestimate their value, though - a good test suite means you can refactor
fearlessly, which itself can pay large dividends.

Functional tests, or end-to-end tests as they're sometimes called, are by far
the most valuable ones. They are correspondingly the most difficult to write.

A test is a "functional" test if it tests the program's user interface. For
libraries that consist of source code for inclusion in other programs, and are
not in fact programs themselves, unit tests actually serve as functional
tests - they reduce the odds of user interface regressions. Thus, unit tests
are higher-value there than elsewhere.

Unit tests are useful in regular projects too, but don't overvalue them.
They're most applicable when writing core functions to exercise logic that is
not yet triggerable via the application interface but which correctness or
robustness demands be implemented.

Functional tests are fairly common for web-based projects, and they can be
found in mobile applications as well, but they are not common in traditional
native desktop programs. In some cases, the only reason for that is inertia -
if the desktop environment you're writing in has [programmatic tools for GUI
introspection and
manipulation](https://developer.apple.com/library/archive/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/index.html#//apple_ref/doc/uid/TP40016239),
you can use them to implement a decent range of functional tests. You can often
find these tools by looking for accessibility APIs, as automated GUI testing
and accessibility tools share the exact same needs.

I have some notes in drafts/testing.txt that should be merged into here.
