Configuration
=============

Configuration values for a web app should usually be required.

There are cases where it makes sense to treat config as optional – a
one-time-use flag value, for instance, at transition time between
two features. You don’t want it floating around for the rest of the
codebase’s life.
 
That said, exploding if you access a non-existent config value is
probably still the best approach, and make optional values the
exceptional case. Make people check“Is this config value set?
 
Obviously your config abstraction needs to support such a check.

The 12 Factor app guys (link) suggest that config should be done via environment variables. That may not be a bad approach.

however you load config, though, in your app config should just be a key/value store.

[there may be other things here - for instance, in a web app, config
 values should be immutable for the process's life. That doesn't 
 work for desktop apps, though. What's the difference here? Do we
 have two independent concepts masquerading as the same thing? Yes - 
 user preferences vs. what I'm referring to as 'config' here.]
