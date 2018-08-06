Changing Programs
-----------------

:date: 2013-01-01
:category: fundamentals
:summary: "But what does a programmer actually *do*?"

.. TODO Merge with 'adding features'?

.. TODO Add to the list of fundamental skills?

.. TODO Litter with appropriate hyperlinks, as essays come to exist: 'listen
   carefully', "user's best interest"


First, listen carefully to the request for a change. Understand deeply why the
asker is requesting the change, and exactly what change in behavior they're
asking for.

That requires a `deep understanding`_ of the program's current behavior
(something the asker may not have themselves).

To gain that, you must use the program as it currently exists, both for the
specified task and other tasks.

If it has documentation, read it, to understand the program's overall
structure, nature, and available features.

See if the program already offers a way to achieve the workflow underlying the
proposed change, or if another program might be better suited to the purpose.

Do not begin designing or implementing the change until you have actually
reproduced the difficulty described in the change request yourself. This helps
you avoid making hypothetical, unnecessary, or nonsensical changes.

.. TODO Hyperlink the below to the essay on caring for user

If the change does not impact a real user, propose an alternative change that
does.

If the change does not have the users' best interest at heart, find an
alternative that does. If necessary, explain to the asker that you feel the
request does not put the program's users first, and work with them to
understand why you feel that way.

.. TODO Describe the core technical loop programmers know so well.

Add (an) item(s) to the project's changelog for the change(s) you are about to
make.

For each of those changes, outline the changes you will make to the codebase to
implement them. Use that outline to decide whether to break the change into
multiple commits.


.. _deep understanding: /understanding-problems.html
