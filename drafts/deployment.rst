Deploying Software
==================

:date: 2013-01-01
:category: workflow
:summary:

Deployment is the process of getting a program installed and configured on
each computer that needs it.

Doing that also requires installing all dependencies - programs it depends on,
libraries it depends on, and configuration to make it behave correctly on the
target machine.

https://zachholman.com/posts/deploying-software has a ton of very good info
about this process.

------------------

For years I thought a static website needed only to use the 'symlink swap'
trick to change its docroot for fully robust releases:
http://blog.moertel.com/posts/2005-08-22-how-to-change-symlinks-atomically.html

A week or two ago, as I pondered how the release process for Scriptlighter.com
should work, I realized I was dead wrong.

Using that trick to change a project's docroot should mean no requests get
lost.

However, if we respond to a request for '/' before the symlink swap, but a slow
connection means we process a request for '/styles.css' with the old symlink
and a request for '/overrides.css' with the new one, then the user will be
seeing a broken, inconsistent page.

I want to figure out how to prevent that.
