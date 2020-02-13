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
