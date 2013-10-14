[Some Clever Title About Errors]
================================

I should turn the following conversation into an actual essay on error
handling:

(14:22) Nate: ...actually, that might be a great way to handle crashes in general
(14:23) Nate: have them auto-file a new issue in your tech support tool,
(14:23) Nate: and if you have a user ID, drop them an email with a link to the issue,
(14:23) Nate: letting them know their problem is on the list, and that any details they can give on why it's happening would be appreciated.
(14:23) Nate: You'd need to prevent duplicate issues for when they try the same thing three or four times...
(14:25) Jim Deno: Yeah, I like the idea, and I like transparency
(14:25) Jim Deno: But that may be too much
(14:25) Nate: It's definitely not anything we need to be doing
(14:25) Nate: I'm just intrigued by the thought.
(14:25) Jim Deno: It is an intriguing idea
(14:25) Jim Deno: And I've never heard of errors handled in that way
(14:26) Nate: heck, skip email - that could be part of the 500 page
(14:26) Nate: it files a new issue, with all the data it can dump, and renders a link to the issue on the page, inviting the user to elaborate on what they were doing.
(14:27) Nate: or, while I'm hypothesizing, one better yet -
(14:27) Nate: give them a text area that asks what they were doing.
(14:28) Nate: If you get a submission, update the issue.
(14:28) Nate: And give them the link after submission.
(14:28) Nate: since submission indicates a certain degree of interest.

[Jim suggested not giving them the link, but I like the idea, since otherwise
they'll have no way to know that their crash has been resolved.]

This is how errors should be handled generally, even in native apps. The only
difference there is that since you're running locally, you need to ask their
permission to file the bug.
