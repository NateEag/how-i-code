Here, I write about how I make software.

The project is published as a static website, compiled with Pelican.

To start a working environment up, do

.. code-block::

   $ ./make-virtualenv.sh
   $ brew install fswatch

To start editing on OS X, with auto-rendering and auto-Chrome-refresh on changes

.. code-block::

   $ make devserver

then open http://localhost:7999 in a browser.

Note that the dates on articles are currently mostly false. This is because I
do not display them, and it gives me a way to force the "frontpage" article to
be on top all the time. The default date is based on the filesystem, so if I
ever find another way to force the "main" article to the front page, that would
solve this problem handily.

I use a small post-receive hook to deploy code to my webserver via git push.

I now mildly regret this decision, as it is not the simplest possible
deployment mechanism - it conflates builds and deployments, and therefore
requires all your build infrastructure to live on the server.

Just pushing the built files up and updating the production symlink is simpler,
and I may someday take the time to shift deployment over to that style (perhaps
by cleaning up and generalizing the deployment script in
https://github.com/NateEag/nateeag.com).

The site is published to http://howicode.nateeag.com.
