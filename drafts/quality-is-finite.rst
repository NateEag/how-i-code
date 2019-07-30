Quality Is Finite
=================

:category: meta
:summary: All programs are broken, but some are more broken than others.

A five-minute hack is just that - a quick, bad piece of code that just barely
handles the specific case being dealt with.

On the other end of the spectrum is Emacs - a piece of software that has been
under continuous improvement and development

[Make the point that it takes time, effort, and brilliance to make a feature
work well, and every time you add one, you spread your manpower thinner, using
up more of your team's available quality creation ability (and potentially
burning more of it out of them with death marches and other slogs)

Thus, there is an absolute limit to the potential quality any software system
can be imbued with.

Also explain that a perfect program is probably not theoretically possible, and
that even if it is, in practice the pursuit of perfection is the enemy of all
practical goals like stability and reliability - each change represents a risk
of breakage or failure, and each step towards perfection gains you an
ever-decreasing amount of value.

This relates closely to the "definition of done" - since no program is ever
perfect, it follows that no program is ever truly "done". Instead you should
talk about what changes have been made in a version of a program, where those
changes have been deployed, and what data is being monitored to detect any
issues with those deployments.

A good example of quality being finite is how close to impossible it actually
is to handle files correctly: https://danluu.com/deconstruct-files/,
https://apenwarr.ca/log/20101213 . Something that appears to work most of the
time is incredibly easy, while something that's actually reliable at Google's
scale is brutally difficult.]
