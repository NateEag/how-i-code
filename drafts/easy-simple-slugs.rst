Easy, Simple Slugs
==================

I have in the past spent a little too much brain power on slugs.

They're not hard to implement at all, but they can be even simpler than I
originally thought.

    return preg_replace('/[^a-zA-Z0-9]+/', '-', $this->name);

gives you about what you'd always want.

Whether you should use the slug as a unique identifier or not should be decided
on a case-by-case basis. If you want prettier URLs, then yes. If you don't want
your users to be frustrated with "that title is too similar to an existing one"
unique constraints, then no.
