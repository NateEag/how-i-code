I've had a number of different jobs.

I've spent a lot of my life coming to grips with ugly codebases.

Surely I have some useful insights I've picked up at some point?


Core Data Structures
====================

Go hunting for the core data structures. Most code in most systems is glue, and
glue doesn't matter much.

Theoretically a project could thoroughly document its core data structures and
put that information front and center in its documentation.

In practice I've yet to walk into a project that did so.

.. TODO Source some of those great quotes about data structures and link them
   below.

Assuming they haven't, you should find them and get to know them.

The easiest way to find those is probably talking to one of your power users.
They can show you the parts of the app they rely on extensively.

If it uses a formal DB, the backend can usually tell you what that is.

If it's a NoSQL DB, well, maybe the. (Yes, sometimes they're the right answer.
No, they don't)


Codebase Change Heatmaps
========================

One thought that recently occurred to me was as follows:

I bet a great way to get to know a new software project is to build a commit
heatmap - what parts of the codebase have seen the most change.

Those will be the pieces that matter, just about every time. Possible
exception: things novices wrote horribly then patched into infinity? But even
then I suspect that they only patched it into infinity if users were actually
fussing over it. Caveat: this method would only work with software that
actually has invested end users. Enterprise sales teams need not investigate.

A quick search of the web suggests there are many tools out there for doing
this with a Git repo, and given the number of $VCS -> Git converters out there,
you can probably apply any of these history heatmappers to the average project
(though it may require patience for the conversion).

(Note from future: I currently use git-heatmap for this job.)

I'd like one that gives you details about file contents, not just which files
have churned. It's unfortunately common for projects to have a few gigantic
files that see tons of edits, and large swathes of those files may stay pretty
constant.

In an ideal world this would be language-aware, so it could actually tell you
what abstractions have seen lots of changes, and incidentally
