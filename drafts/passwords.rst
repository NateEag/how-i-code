Keep It Secret, Keep It Safe
============================

Authentication is complicated, even using an ancient tool like a password.

I'm not a crytography expert, so my advice should not be taken over-seriously.

That said, I know a few things about them.

* Passwords should be hashed with variable stretching, so that brute-forcing
  them is harder.

* Passwords should be hashed with a randomly-generated per-password salt, so
  that precomputed hash lookup tables (a.k.a. 'rainbow tables') can't be used
  to reverse the hashes in practice.

* Do not ban any characters from passwords. That reduces the keyspace attackers
  have to search.

* Measuring password security is tricky.

* Writing down passwords is not as dangerous as having weak passwords. Physical
  access to a piece of paper may be hard for attackers to obtain, especially if
  they don't know where to look. Fundamentally, stealing pieces of paper
  doesn't scale, but brute-forcing small keyspaces does.

Troy Hunt has a great piece on authentication standards in 2020:
https://www.troyhunt.com/passwords-evolved-authentication-guidance-for-the-modern-era/
