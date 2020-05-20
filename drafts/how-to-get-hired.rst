Software development is a learnable skill.

There are some prerequisites, but not many:

- The ability to take things extremely literally

- A willingness to think carefully about minute details

- A working computer

- The ability to look at a blank canvas and put something on it.

If you would like to gain employment as a software developer, the core skills
you should develop are:

.. TODO Hyperlink these to the appropriate essays as they get finished.

* Learning new things without a teacher

* Fixing bugs

* Using version control

* Writing programs

Prerequisites / underpinning skills for those are, in turn

* Reading (especially catching inconsistencies and errors in written ideas)

* Writing (specifically technical writing, for documenting problems, goals, and
  solutions)

I could write at length about each of those skills, and intend to do that
eventually.

What's the best way to learn them, though?

I find the best way to learn is by doing, generally. It pays off to do the
underpinning theory, but that itself is best learned by working with it.


Learning New Things Without A Teacher
=====================================

There's a great chance you already know how to do this. Lots of people do.

If you don't, though, this is arguably the fundamental skill for all software
development.

Lots of programming consists of being given a task you haven't done before and
figuring out how to do it - or, in another way of looking at it, teaching
yourself how to do it.

I'm not sure how to teach this skill, as it came to me naturally and young.

The best advice I can give is to cultivate curiosity. When you wonder "why's
that work?" or "how on earth did that happen?", make note of it and take time
to go back and understand it.

It also really helps to recognize the existence of unknown unknowns - to
realize when you're dealing with situations you don't understand and you really
need to go do some heavy research and learning before diving into the task. In
software development, knowing computer science theory helps here, just because
you know the terminology to use when searching academic literature for potential
solutions to your problem.

Fundamentally, though, this boils down to "Research the subject, understand
what you've found, try an experiment based on your reading, and if it didn't
work do the process again until it does."

Sometimes you can skip the loop by aid from coworkers, but there will be
situations when there isn't another person to lean on, and you need to not be
stuck when that happens.


Fixing Bugs
===========

Fixing bugs is both incredibly straightforward and really difficult.

It is also the crucial skill for a maintenance programmer. Maintenance work
isn't always exciting, but there is always a job for someone who will roll up
their sleeves, dig into a bug report, figure out what's causing it, and fix it.

To get good at it, practice.

To kill three birds with one stone, find open source projects that use
Javascript on `GitHub <https://github.com>`__. Find an open bug report you can
reproduce, volunteer to work on it, and submit your fix. It may not get in
first try, but most maintainers are grateful for help and will be glad to tell
you how to improve your fix if there are things they don't like about it.

The birds are counted thusly:

- Accepted pull requests on a GitHub profile show you can do useful programming
  work. To many programmers they are more important than a resumé.

- Active GitHub profiles get attention from people looking to hire (I got two
  jobs and more interview requests due largely to having an active GitHub
  profile).

- Working through the process to create and submit bug fixes will force you to
  learn the basics of version control with Git.

Once you get a handful of pull requests accepted on GitHub, you have great
evidence that you can fix bugs, and also that you have at least some idea of
how to use Git, both things that potential employers will be glad to see.


Version Control
===============

It's surprisingly easy to completely ruin a codebase while trying to make
changes to it. The smartest guy in my computer science undergrad class had to
restart a final project from scratch after he did that near the end of a
semester.

Fortunately, professional programmers have tools to keep us from doing that. I
really wish my profs had taught us about them.

They're called `version control systems
<https://en.wikipedia.org/wiki/Version_control>`__.

Each one has its own unique strengths and weaknesses, but at the end of the day
they mostly enable a few crucial things:

- saving the exact contents of a whole folder on your hard drive

- restoring any previous saved version of that folder (thus solving the "I
  destroyed everything" problem)

- sharing saved versions of the folder with other programmers.

- Comparing two versions of the folder to see how they differ

If you want to work as a professional software developer, you need to learn
version control.

You'll likely get the most mileage out of learning `Git
<https://git-scm.com/>`__, as it's widely used (despite its notoriously poor
user interface).

You will probably encounter others in your career, but if you understand Git
well you will be able to learn new systems as needed (and in many cases you can
use Git itself as an interface to the other VCSes).

Here is the `best Git tutorial I know of
<https://www.sbf5.com/~cduan/technical/git/>`__.

This `OS X-only UI <https://gitup.co/>`__ is the most promising open-source
graphical Git tool I've seen (the best one there is, including the Git CLI, is
`magit <https://magit.vc/>`__). Most serious Git users wind up learning to use
the command-line interface pretty well, but theoretically it's not necessary.

Note that as you learn the advanced corners of Git, there will likely come a
moment when you think "Oh crap, I just deleted the last week of work!"

As long as you have committed your work, there is almost certainly a way to get
it back. If you committed it and pushed it, even deleting it on purpose turns
out to be really difficult.


Writing Programs
================

Practically speaking, web development is a useful skill and one that is likely
to have high longevity - unlike desktop and mobile programming languages and
frameworks, the fundamental building blocks of the web are unlikely to be
replaced by a new system in the next five to ten years.

HTML and CSS are useful to know, but if you want to increase your salary as a
generalist programmer, JavaScript is the place to focus, pragmatically
speaking. It's much harder to learn well than HTML and CSS, so as a skill it
tends to pay better than the other two.

There are a mountain of existing web applications that use JS extensively in
the user interface, so there will be maintenance work in JS for the foreseeable
future (and it's increasingly common outside web browsers via `Node.js
<https://nodejs.org/>`__).

Finally, if you learn it really well, you will learn a number of core
software development skills and paradigms that will carry over to other
programming languages and environments.

A great resource for people who want to do exactly that is `Eloquent
Javascript <https://eloquentjavascript.net/>`__.

It's a very dense read, but if you work through it, take the time to understand
it, and DO THE EXERCISES, you will come out the other end with a strong grasp
of how JS works, as well as knowledge and skills that will serve you well in
software development generally, even when using or learning other languages.

You do not need to do all of Eloquent Javascript before doing anything else.
Once you finish chapter 7, you should probably take an extended break to focus
on other technical skills.

It's probably worth keeping your exercises in Eloquent JS in a git repository,
in fact, to help you learn version control (and recover when you make
mistakes).

You might think writing programs should be higher on this list, but it turns
out most software work is in making small changes to programs, not writing new
ones.
