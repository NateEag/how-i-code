A lot to say here - might become multiple essays.

* All docs need a simple, obvious way for users to report errors.

* It's a win to have automated tests for the examples in your docs.

* If your docs don't have examples, you might want to change that.

* Docs are the highest form of specification (they're how users learn what the
  program does).

* Every interface in your system should have documentation, whether it is an
  interface for other programmers (file, class, function, method, macro) or for
  users (CLI option, preference file, menu item). Explain why (agile is
  evolving specs, forcing clarity for yourself, explicit contract with users,
  etc)

A whole lot of what I want to say has been clearly articulated in the GitLab
documentation style guide:

https://docs.gitlab.com/ee/development/documentation/styleguide.html

Especially note the "single source of truth" and "docs-first methodology"
sections.

They don't really get into tangling/weaving docs, specs, and code, but
long-term that's where my vision winds up. The manual and the spec are not the
same document, but they contain a lot of the same information and have a lot of
the same needs. Thus, they should be able to reference and include the same
information throughout without duplicating info.

I think I've just realized how the specref ought to work.

In a project that uses specrefs, in any document, a link beginning with / is
interpreted as a specref - when rendering the documentation, we assume the
target document lives at the specified location within the project's directory
(so '/' represents the project's root directory). In Markdown, that looks like
this:

    See [valid usernames](/users/signup/validations.md) for more details.

As usual, if you want to link to in-document anchors, you can:

    Usernames [must be unique](/users/signup/validations.md#Unique Constraint).

Note that the name following a hash should exactly match the title of the
targeted section. At least in Markdown, we parse links based on the wrapping
parentheses, so characters like spaces and parentheses should cause no trouble.
This constraint makes rigorous validation of anchor targets possible (obviously
we would also validate that the target document exists), allows us to suggest
intended targets by heuristics like low edit distance from an existing target,
and makes it easy to provide a tool to do global renaming of documents and
sections (we could even generate a redirect table if we like, so that links
work across time, and could even use JS to intercept known-old anchor IDs and
point them to the current anchor ID).

At render time, we may run a slugification on the links. We apply this rule so
that it's easy to automatically update references to a given title - just
search for specrefs to the document and title.

As observed above, manuals and specs are different documents that share large
amounts of information.

We therefore extend the specref syntax to support inclusion of a document or
section thereof:

    :[](/users/signup/validations.md)

subsitutes the contents of `users/signup/validations.md` at the current place
in the document. It is on the document author to avoid title collisions.

    :[](users/signup/validations.md#Unique Constraint)

does the same but for only the section titled "Unique Constraint".

.. TODO Figure out if CommonMark or one of the Markdown variants already has an
   include function. If so, just use that.

In this way, it should be possible to define core ideas and truths in exactly
one place while letting the output documents all contain it. Text editors and
other development tools could be taught to preview the included content on
demand (e.g. on hover over the inclusion), for convenience while developing.

This mechanism could also be applied to include code files in documents inline,
thus allowing particularly relevant functional tests to serve as tested
examples, to easily show formal schemas in generated documentation, and even
perhaps to embed small hunks of code (e.g. constant declarations) and logic
(e.g., regular expressions for validating a particular category of input) in
the documentation where appropriate.

This may all be errant nonsense. It seemed eminently right when it struck me
while brushing my teeth.

We'll see what I think of it in a few months.
