You don't have it.

I'll never need to deal with it.

A few pieces of evidence for that:

This paper compares several distributed graph-processing systems with naive
single-threaded approaches and concludes that in some cases, the
graph-processing system is actually never more efficient for the described use
case: https://www.usenix.org/system/files/conference/hotos15/hotos15-paper-mcsherry.pdf

https://yourdatafitsinram.net. Just points out that there are servers in the
wild (even EC2 instances) with many terabytes of RAM. If it fits in RAM it is
easier, faster, and cheaper to work with it there than to build and maintain a
distributed system for processing it.

Never forget that, for a lot of tasks, you can make a Unix shell pipeline that
beats the pants off, say, Hadoop, due to pipelines' inherent parallelism (you
just need to not write something that prevents parallelism; sort | uniq is a
classic offender):
https://adamdrake.com/command-line-tools-can-be-235x-faster-than-your-hadoop-cluster.html
