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

Of course, you only give back a cached promise if the request-maker said
cached data was acceptable.

You invalidate GET caches on PUTs and DELETEs, rather than based on timeouts,
and thus you know that any entity you have a cache entry for is up-to-date with
all your operations.

That doesn't handle what you do if someone's updated the resource since you last
requested it.

That's theoretically straightforward, though - don't worry about it.

Store 'last edited' or etag-like metadata (or just use the headers
themselves?), and the server can give you back a 409 if you submit changes that
might (or would; pick your preferred semantics) stomp on other changes.

Make the body helpful for showing the conflict in the UI (here's what I have,
here's what you sent), so the UI can let the user resolve the conflicts
intelligently.

You can hook promise handlers to invalidate the cache in event of an error,
too, and you can do that inside your request handler.
