When you have no idea why something is happening, come up with a
diagnostic you can drop in your code, with output to indicate whether the
behavior occurs (something as dumb as 'happening' vs 'not happening' will work fine).

Run a binary search through the body of code responsible, using your diagnostic as the delimiter between known-good code and untested code.

You will eventually get down to the line that flips your diagnostic from 'not
happening' to 'happening'.

From there, you can usually start to deduce why that line/method/abstraction would be having the effect it is.
