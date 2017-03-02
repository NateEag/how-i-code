Naming Database Tables
======================

:date: 2013-01-01
:category: naming
:summary: Relational databases are... relational.

Relational database table names should be plural nouns. A table contains a set
of rows, each representing an individual entity, so the set's name should
reflect that plurality.

Link tables define a relationship between two tables. To name them, write a
simple sentence describing the relationship between the two tables, then
convert the verb to a noun.

For example, in a system that lets users promise to achieve goals, you might
have a `users` table, a `goals` table, and a table tracking each time a user
commits to achieve a goal.

That link table, then, is the `commitments` table, because 'A user commits to a
goal.'
