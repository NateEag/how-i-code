RESTful APIs
============

I've seen several good sets of guidelines for this.

I should synthesize the important bits and link the best ones from here.

This provides a nice clear overview of the basics:

https://restapitutorial.com

This one's really good:

http://www.vinaysahni.com/best-practices-for-a-pragmatic-restful-api

and of course, it's always a good idea to listen to heavy-duty service
providers:

https://github.com/interagent/http-api-design

Also note that there is an IETF draft of a specification for using headers to
warn about API deprecations / sunsets. Should keep an eye on it and adopt it if
it gets accepted. https://tools.ietf.org/html/draft-dalal-deprecation-header-02

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


Links Vs. IDs
=============

This article argues you should use links in your responses, not ID fields:

https://cloud.google.com/blog/products/application-development/api-design-why-you-should-use-links-not-keys-to-represent-relationships-in-apis

There were some plausible rebuttals on HN, IIRC, but there are good arguments
for it, too. My guess is that eventually you wind up doing both, if you care
about the developer experience.


Are Single-Page Apps A Good Idea?
=================================

TODO Figure out where this should live. SPAs are RESTful API clients, and as
such have little to do with the API themselves.

I really like decoupling the frontend from the backend, and I appreciate that
for many tasks rich apps are better than the lean things we used to do.

I lean towards SPAs myself because of how cleanly they enforce decoupling, and
how they lead you to a backend that encodes the business logic and is therefore
reusable in multiple client contexts.

That said, this article does make a solid case that SPAs as such have some
problems and are forced to reinvent several wheels:
https://adamsilver.io/articles/the-disadvantages-of-single-page-applications/


File Upload APIs Should Accept A Hash Of The Input File
=======================================================

After the API endpoint has finished processing the inbound bytestream
representing the uploaded file, they can check whether hashing the uploaded
file bytestream generates the desired hash.

If it does not, the uploaded file should be treated as "unsuccessful" (e.g.,
not made publicly available, but perhaps left in place to allow for resuming
interrupted uploads), and an error response should be returned to the API
client.

A simpler-but-less-bulletproof variation is to use the Content-Length header to
verify that the number of bytes received is correct.
