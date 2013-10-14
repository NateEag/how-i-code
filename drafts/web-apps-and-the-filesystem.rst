Using The Filesystem In Web Apps
================================

First, try to design your app so it doesn’t have to deal with files at all.

That often isn’t feasible, though.

If you do wind up having to use files, though, don’t use a library for local filesystem manipulation (which most standard PL libraries are).

Instead, write to some abstract filesystem interface, so that you can swap out the backend if you need to scale out horizontally.

I’m sure there are ugly pitfalls in that plan, probably mostly involving
exactly how you write files to a remote filesystem (file handles vs. full data
blobs, and streaming and the like), but I think the core idea is probably
pretty sound.
