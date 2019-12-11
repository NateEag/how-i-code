The ideal thing to do with slow builds is make them fast.

When that's impracticable, whether due to deadline pressure, politics, or
difficulty upstreaming changes (special case of politics, I suppose), just
append a notification to your build command.

It should tell you what just finished building and what you intended to do with
it. I for one always forget if the build takes more than thirty seconds,
because I go do something else while I'm waiting then lose track.

This is not necessarily a change you need to put in the build infrastructure
(though if people like the idea you certainly can). It works just fine as
something you do whenever you build:

$ ./build-script ; notify '$project_name build done; I wanted to see if foos
still bar correctly in this version'
