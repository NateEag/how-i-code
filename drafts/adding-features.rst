I should write a real outline of how you do this. In fact, I've just realized
this is, in fact, a fundamental skill.

For every feature you ever build, part of your workflow should be taking a
minute at the start to ask "Is this actually a good idea?" and "Is this the
next best step to take on this project?"

Otherwise you will spend intelligence and effort on something stupid.

well, you still will do that, because you'll be wrong a lot.

But you can cut down the amount you spend without *too* much effort.

The next step is to write a quick scope specification for the POC (see
unfinished POC essay), which you have another human review before you start
building. You loop on the POC step until you've either concluded "this feature
is not viable" or you have shown "yes, this is feasible". You then update the
ticket accordingly.

If that all pans out, you then crank out a rough draft of a proper spec for the
feature. Again, before you start building, run it past someone. Doing so costs
you a small, fixed-ish cost time (in fact, let's define it to be capped at N
hours for writing and M hours for review). By paying that cost you decrease the
total amount of time spent on misfeatures and bugs (those costs are multiplied
across your users and tech support, not just the dev team) that are caught at
the review phase instead of in production. (This lesson brought to you by me
not understanding how iOS in-app purchase restoration is intended to work,
despite having read the appropriate document, and thus building it in a way
that made a lot of people type their passwords a lot. I bet if another dev had
read my draft spec, they'd have caught my oversight.)
