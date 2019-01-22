Just keeping some notes as I read Google's SRE O'Reilly book.

They may eventually evolve into a set of essays strongly inspired by the
aforementioned book. I guess we'll see.


Chapter 1
=========

Monitoring systems should categorize their output into:

- Alerts, which tell humans "Intervene *fast* or there will be major
  consequences."

- Tickets, which tell humans "Intervene soon, but it doesn't have to be right
  now."

- Logging, which humans can ignore until they want to look it up. Think of it
  as generating reference material.

Obviously, those systems should actually generate alerts, tickets, and logs as
appropriate.

Change management systems (a.k.a. deployment systems) need to offer three
features to be reliable and robust:

- progressive rollout
- fast, reliable problem detection
- Safe, stable rollback (for when you do catch problems)


Chapter 5
=========

Google is dedicated to automating operational work that doesn't require human
judgment, to ensure their operations team can sustain itself. They know
automatable work when they see it, and they have a word for it (toil), but they
don't have a concise, clear definition for it. They commit that any given SRE
will spend at most 50% of a quarter toiling.
