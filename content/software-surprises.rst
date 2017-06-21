Software Surprises
==================

:date: 2013-01-01
:category: workflow
:summary: When software surprises you, do this.

No program is perfect.

Even if there were a perfect program, you almost certainly would not understand
it perfectly, so it would still sometimes surprise you.

Pleasant surprises, where a program does something helpful, fun, or interesting
that you did not expect, require no special treatment. It will be appreciated,
however, if you take a moment to thank the programmer(s) for their hard work on
your behalf when you encounter such a surprise.

When a program unleashes an unpleasant surprise on you, the first thing to do
is `stop <http://www.chiark.greenend.org.uk/~sgtatham/bugs.html#antelope>`__.

If the surprise is not pleasant, your instinct will be to do something -
perhaps try the action again, to see if it works this time, or to restart the
program, or the computer.

By doing any of those things, you risk losing a bug to the mists of time. If
you change anything, you may lose the only evidence anyone has ever had that a
bug exists.

Once you have prevented yourself from damaging the computer's state, write down
the sequence of events leading up to the surprise, ending with the surprise
itself and an explanation of why you found it surprising.

Your audience for this explanation is someone who has never used the program
before. Writing for them will push you towards the specifics that are crucial
for reproducing tricky bugs.

Once you have finished writing this explanation, you may find that you are no
longer surprised, because you have had an insight into the program's behavior.
Sometimes such an insight will come before the explanation is even finished.

If the insight is "It's working as intended and I misunderstood the program",
then you should mention the incident to the programmer, so that they are aware
some aspect of the interface was not immediately obvious to you - other people
may have had similar problems, and if enough do, it implies that the interface
or the manual should be updated. Other than that, though, you have no
responsibilities.

If the insight is instead something about the nature of the problem, or a
theory about why the surprise might have occurred, write it down after your
explanation of the surprise.

Next, collect evidence that the surprise happened. A screenshot is a good place
to start (especially for graphical programs), as are log files, or for a batch
command-line program, a copy of the terminal session.

Once you have collected all the evidence you can, think about whether the
surprise is actually a problem or not. Check any program documentation to see
if it mentions a situation like yours.

If you aren't sure whether it's a problem, show the programmer(s) your evidence
and ask them what they think.

.. TODO Factor bug reporting out to its own essay?

If the surprise is a problem, then file a bug report, via whatever mechanism
the programmers prefer. Sometimes the project documentation will contain
instructions on bug reporting, which you should follow if it's available. Some
programs have built-in bug reporting mechanisms, which you should use if
feasible.

The first step in writing a bug report is to reproduce the problem. Your
explanation of the surprise should guide you in the right direction, and can be
refined to the minimum steps needed to reproduce the issue.

If there is a program available to record your screen, use it while you try to
reproduce the bug. If you capture the bug on video, include that video as part
of your bug report.

If you cannot reproduce the bug, the bug may be one that's hard to reproduce.
Simply use your explanation and evidence for the report, and note that you have
not been able to reproduce it.

The highest form of reproduction is a small program that demonstrates the
defect when run. It is not always feasible to create one, but for batch
command-line programs it often is. If your initial reproduction attempt is
successful, and you can see how to quickly write a program to reproduce the
surprise, it may be worth doing so and including it in your bug report.

Alongside your reproduction steps, include any additional information that may
be useful. Some things that are almost always helpful are the program's version
number and the operating system you ran it on. Many other things could be
relevant depending on the context - trust your instincts and lean slightly
towards too much information rather than too little.

Be prepared for the programmers to ask further questions - they will often want
to know things you did not think to include. If you can, answer them.