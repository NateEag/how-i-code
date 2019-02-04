I found this gem and didn't know where else to put it, but I really didn't want
to lose it, so I started this file:

https://plus.google.com/+RobPikeTheHuman/posts/R58WgWwN9jp

In summary, Rob Pike relates that hidden files on *nix systems were probably
not intended, and he believes they were a mistake.

   ...so either Ken or Dennis added a simple test to the program. It was in
   assembler then, but the code in question was equivalent to something like
   this:

   if (name[0] == '.') continue;

   This statement was a little shorter than what it should have been, which is

   if (strcmp(name, ".") == 0 || strcmp(name, "..") == 0) continue;

   but hey, it was easy.

   ...

   I'm pretty sure the concept of a hidden file was an unintended consequence.
   It was certainly a mistake.

It explains so much, really.
