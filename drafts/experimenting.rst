The germ of this essay is actually a postmortem from a deployment I did at work
yesterday.

I spent several hours trying to figure out how my deployment of an update to
the in-app purchasing verification code had broken in-app purchasing.

I eventually figured out that in fact it was broken for my user specifically in
a specific client's app, and that the breakage predated my deployment.

I didn't know that because I didn't get baseline test results for everything I
should have. Specifically, I did not try purchasing a book in this client's
Android app before I deployed the change (at some level this was the most
important test and I overlooked it because I was rushing). As a result, when I
tried that test impulsively trying to establish "Did I finish fixing the issues
that happened?", I interpreted the test failure incorrectly.

The terminology that came to me trying to describe this to someone else was
that of a scientific experiment. I did not have a control group, so I could not
make plausible inferences about interesting data points in my experiment.

That made me realize that testing is a subset of the skill of experiment
design, which is more broadly applicable than testing itself is. You can also
use it in profiling code, in analyzing user behaviors, in understanding
bottlenecks, in debugging, and probably in other places I haven't thought about
yet.

So, at some point, I should analyze and explain experimental design as a
fundamental skill for a developer.

This article on expecting chaos in production has some useful insights about
experiment design: http://principlesofchaos.org/
