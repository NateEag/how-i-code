RESTful APIs
============

I've seen several good sets of guidelines for this.

I should synthesize the important bits and link the best ones from here.

This one's really good:

http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api

and of course, it's always a good idea to listen to heavy-duty service
providers:

https://github.com/interagent/http-api-design

This may be more a related article, but note also my realizations from a few
months ago about caching in a RESTful client app, which I dump here for
posterity:

I just leveled up in my REST understanding.

If we had a RESTful setup, then we could actually cache promises *very*
intelligently.

PUTs, for instance, you can cache by URL, not just GETs. DELETEs, too.

And you can do much of this caching transparently in your request creator. You
give back the promise and the asker has no idea it was a cached one.

Of course, you only give back a cached promise if the requester said
cached data was acceptable.

You invalidate GET caches on PUTs and DELETEs, rather than based on timeouts,
and thus you know that any entity you have a cache entry for is up-to-date with
all your operations.

That doesn't handle what you do if someone's updated the resource since you last
requested it.

That's actually straightforward, though.

By default, just rely on the cached data. Add cache timeouts if you like.

Offer an explicit refresh button, so the user can be sure they're up-to-date if
they want, but don't force them to.

Store 'last edited' or etag-like metadata (or just use the headers
themselves?), and the server can give you back a 409 when you submit changes
that might (or would; pick your preferred semantics) stomp on other changes.

Make the body helpful for showing the conflict in the UI (here's what I have,
here's what you sent), so the UI can let the user resolve the conflicts
intelligently.

You can hook promise handlers to invalidate the cache in event of an error,
too, and you can do that inside your request handler.

## Nesting Resources

If you want to support simpler general case nesting of resources than
PostgREST, you need to define parent/child relationships, so the system can
reason about relationships in terms of them.

A simple way to establish a parent-child link is in your route setup - if it's
useful to embed a child in its parent resource, then you define a route that
fetches the child via the parent, and the engine can use that hierarchy to
infer the relationship.

you'd still have a standard /entities/$id route, of course.

you can then use query parameters to express ideas like 'embed children' or
'recursively embed all descendants', like we wanted for BPIR.

Path accesses would still work like they did in my proposed design from then.

You would not cache compound responses, because that's a nightmare for
invalidation.

However, you could use URIs for cache keys server-side just like I proposed for
client-side caching, so you could construct complex documents from the cache
pretty simply by using route-based lookups, inferred from the hierarchical
routes.

In fact, you can probably just do straight HTTP queries against the identity
routes for each descendant. If you have Varnish in front of all of those, you
get automatic caching with very little extra effort.

and of course you can use the promise-based cache population trick I came up
with for fetching resources from the DB. Though really, if you have Varnish set
up in front of it, you likely don't need the promise-based cache population
idea server-side.

this all falls down once you have to go distributed, but that's a problem I'll
never have, because nothing I write will ever be that popular.
