The Zen of Python has it right:

> Errors should never pass silently.
> Unless explicitly silenced.

So, to expound on that:

Programs should have a top-level error handler that catches all
otherwise unhandled errors.

The behavior for such a handler should be to log all available details about
the errors and execution environment then terminate the program, as it is not
possible to recover correctly from an error of unknown nature.

If the user is unlikely to be watching the logs, the program should display a
reasonably friendly error message, ideally offering to file a bug on behalf of
the user (though for programs not yet known to be useful, setting up automatic
bug reporting might be misallocating your precious quality budget).

If you are writing a program and you notice error conditions you know exactly
how to handle, go ahead and write the error handling code for that situation.

If you recognize that an error condition exists but are not sure how to handle
it, do not add code to handle it until you have figured out how it should be
handled. Leave a FIXME comment noting the unhandled condition exists.

Do not add code to log events you aren't sure how to handle - your general
error handler should do that for you, and error-specific logging code can lead
to hiding events in more mundane logs that should be classified as "flagrant
unhandled error".

Often, this is as simple as triggering the default error handler (e.g., quit
immediately) but with a clear, specific error message, ideally with advice on
how to resolve the problem (e.g., "This program needs at least ten megabytes of
free disk space to run, and this computer only has %d free megabytes of disk
space, so it is going to quit now. Please make sure your drive has at least ten
megabytes of free space before starting it again.")
