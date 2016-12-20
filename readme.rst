Here, I write about how I make software.

The project is published as a static website, compiled with Pelican.

Note that the dates on articles are currently mostly false. This is because
I do not display them, and it gives me a way to force the "frontpage" article
to be on top all the time. The default date is based on the filesystem, so
if I ever find another way to force the "main" article to the front page, that
would solve this problem handily.

I use a small post-receive hook to deploy code on push to my webserver.
Incurring the load of builds on a server isn't necessarily optimal, but it's
simple, and for a low-traffic personal static site, the additional load is
unlikely to ever be a problem.

It is published to http://howicode.nateeag.com.
