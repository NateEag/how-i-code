Managing Sandboxes
==================

:date: 2013-01-01
:category: workflow
:summary: It should only take two commands to make a sandbox.


It should take at most two commands to bring up a developer sandbox:

1. Check out the code from version control
2. Initialize the sandbox environment

Building and running a program inevitably requires other programs.

For a portable shell script, the environment is simple. Just ensure sh is
available.

In most cases, the environment is more complex.

`Automate installing dependencies <http://12factor.net/dependencies>`__, make
it runnable as a single command, and keep that command in the project's version
control repository.

`Vagrant <https://www.vagrantup.com/>`__ automates creating and setting up
virtual machines. It's an excellent tool for testing an app in an isolated
environment, and thus for creating developer sandboxes.

This makes it simple for a new team member to start working.

Making and deploying builds also becomes simpler, paving the way for continuous
integration, continuous deployment, and horizontal scaling.

When testing network services with Vagrant, use DHCP for networking, set the
VM's hostname to :code:`${project}-${username}-${id}`, and have your
provisioner install `Avahi <http://avahi.org/>`__, so the VM is reachable by
the domain name :code:`${project}-${username}-${id}.local`.

The :code:`$id` variable is a per-user counter set in the Vagrantfile (which
supports arbitrary computations by being `Ruby <https://www.ruby-lang.org>`__).
Set it from a per-user seed value that's incremented on sandbox creation.

By giving infinite sandboxes to anyone on the network, it becomes easy to debug
sandboxes, demo work in progress, and even to let stakeholders try a commit
while a developer continues work on the branch.

Since Vagrantfiles are just Ruby, you can also support custom domain names via
environment variables. When used, it's on the developer to avoid conflicts.
