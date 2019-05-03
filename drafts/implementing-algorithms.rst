How To Implement An Algorithm
=============================

(like Yugoslavia, this will probably be broken up into component parts before
it is published. It's a quick draft of how I approach writing algorithms, but
I'm not sure if it *should* be that.)

Start by defining the signature - name, inputs and output. Remember that from a
design perspective, the signature includes any attached state, be that the
class instance for a method or the variables in a closure (though most
languages have no formalism for documenting the vars in a closure [PHP being a
noteworthy exception]).

Do *not* begin by writing public documentation, apart from perhaps a single
sentence. It will change as you work.

Outline the overall flow of the algorithm using comments. You will likely catch
a few mistakes cheaply this way.

Implement the algorithm. Give it a few test runs and fix the oversights they
reveal.

Where reasonable, replace each section headed by an algorithmic comment with a
call to another algorithm. Name the sub-algorithms clearly so that the comments
are no longer necessary.

Finally, once you've used the algorithm in a few different cases and see no
drastic changes, add public documentation so that future programmers do not
need to read the entire algorithm to understand what it does.
