This article had a lot of good advice on building *nix-style CLIs.

It doesn't strike me as entirely right, but there is a lot of good there:

https://medium.com/@jdxcode/12-factor-cli-apps-dd3c227a0e46

In general, I think the CLI could be much friendlier than it is, and something
that works well for a much larger range of people. Bash falls down in a few key
spots, like having terrible discoverability on first encounter (a good MOTD
could go a long way to helping that, honestly), and requiring you to konw
about, install, and configure autocompletion.

I hear PowerShell is better at this than Bash, at least a little, and has some
new ideas. I should probably learn it someday.

Advanced Slack users navigate it much like a programmer does a terminal, even
when they aren't programmers.

The problem with new shells is that they won't take off if they aren't
sh-compatible, so newbies will never find them, but if they are sh-compatible,
they're likely too confusing for a newbie.

Is that true?



Useful bash scripting tidbit I want to not forget:

'tput cols' gets you the number of columns for the current terminal.

'fold -sw <int>' wraps input text to be at most <int> columns wide.

Write your multiline messages unwrapped in bash scripts, and tadaaa - you can
use those to make your UI a little nicer. Just remember that 80 is about the
widest an output message should ever be.
