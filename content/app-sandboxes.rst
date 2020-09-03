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

Write a command that `installs app dependencies
<http://12factor.net/dependencies>`__, and keep it in version control.

Once that exists, use it to write a command that creates a working project
sandbox. That should also live in version control.

This makes it simple for a new team member to start working.

Making and deploying builds also becomes simpler, paving the way for continuous
integration, continuous deployment, and horizontal scaling.

`Vagrant <https://www.vagrantup.com/>`__ automates creating and setting up
virtual machines. It's an excellent tool for testing an app in an isolated
environment, and thus for creating developer sandboxes.

.. TODO Rethink whether mDNS is the best choice. I have learned since I last
   worked on this that it's possible to get Let's Encrypt to give out certs for
   internal-only DNS. If your DNS provider has an API, it should be possible to
   automate. Since Android doesn't yet support mDNS, using an internal,
   centralized DNS server that sandboxes register with might be the only viable
   option for getting fully-automated HTTPS sandboxes that Just Work
   automatically on all major platforms.
   https://www.techprowd.com/automatic-ssl-certificates-for-home-microk8s-setup-using-letsencrypt/

.. TODO Address accessing sandboxes from devices that don't support mDNS. A
   local development DNS server is the obvious approach for that, but I haven't
   found one that works well yet (or even usably, really).

When testing network services with Vagrant, use DHCP for networking, set the
VM's hostname to :code:`${project}-${username}-${id}`, and have your
provisioner install `Avahi <http://avahi.org/>`__, so the VM is reachable by
the domain name :code:`${project}-${username}-${id}.local` (without requiring
network administrators to manage DNS for sandboxes).

The :code:`$id` variable is a per-user counter set in the Vagrantfile (which
supports arbitrary computations by being `Ruby <https://www.ruby-lang.org>`__).
Set it from a per-user seed value that's incremented on sandbox creation.

By running each project's sandbox on a distinct virtual machine connected to
the local network, you ensure that they will not interfere with each other.
Each virtual machine publishes its own network services, which will only impact
machines that choose to interact with them, and non-network processes on the
virtual machine cannot impact other machines on the network.

Thus, this approach makes it possible to have effectively infinite sandboxes,
given sufficient computational resources.

By contrast, any approach that opens ports or runs processes directly on the
developer's physical machine will eventually result in conflicts, thus
requiring the developer to think about her sandbox.

By giving infinite sandboxes to anyone on the network, it becomes easy to help
teammates debug their sandboxes, run impromptu demos, and even to let
stakeholders try a commit while a developer continues work on the branch.

Since Vagrantfiles are just Ruby, you can also support custom domain names via
environment variables. When used, it's on the developer to avoid conflicts.
