I've long been suspicious of two-way data binding, and have never been able to
articulate why.

I'm currently hacking on AngularJS stuff for $DAYJOB, and have realized part of
why:

It *requires* mutability and operation by side-effect, by *definition*.

That's harder to reason about than a pure functional approach:

"Here's my state. Render it."

At least, that's how my brain works.
