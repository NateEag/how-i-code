Debugging is a place where my technique is not optimal.

I usually use logging to collect diagnostic information and falsify
theories while debugging. It is a simple, reliable, portable technique that
works almost everywhere, and is therefore critical for any programmer to
learn - if you know it, you will rarely be without the tools to investigate a
bug.

It is generally more efficient to use a debugger for those jobs. I did use
JBuilder's debugger extensively back when I wrote desktop Java, and more
recently I've used Xcode's to help me debug issues with Cordova plugins that
support iOS, and I use Emacs' built-in debuggers occasionally to help me with
Elisp, so I'm no stranger to the standard debugger workflows (set breakpoint,
step into, step over, examine stack frame, eval in context, etc).

The main reason I haven't made debuggers a standard part of my tooling is that
historically it's been a lot of work to set up Emacs to use any given debugger.

With the [Debug Adapter
Protocol](https://microsoft.github.io/debug-adapter-protocol/), it should be
much easier. I should get DAP set up and get in the habit of using debuggers
whenever it's reasonably possible.

I understand the principle of using a core dump, that you can see program state
as it existed at the moment before the crash occurred, but I have never
actually used one in practice. I mostly work in interpreted languages, and thus
core dumps represent language or platform bugs for me.

I recently discovered the existence of [record/replay
debuggers](https://en.wikipedia.org/wiki/Debugger#Record_and_replay_debugging),
which appear to be magical for debugging intermittent issues, especially when
they support reverse debugging (a.k.a. [time-travel
debuggers](https://docs.microsoft.com/en-us/windows-hardware/drivers/debugger/time-travel-debugging-overview)).
These are the debuggers I've vaguely wished for over the years of my career
thus far. I have yet to use record/replay debugging for anything, but
apparently [GDB supports
it](https://sourceware.org/gdb/current/onlinedocs/gdb/Process-Record-and-Replay.html#Process-Record-and-Replay),
and there are [tools like rr](https://rr-project.org/) for C/C++ (I don't
understand why it sits on top of GDB which already supports it - subject for
research if I ever care). Of special interest is that someone [did get this
working for PHP 5](https://github.com/sidkshatriya/dontbug), that [MS built it
in a ChakraCore-based NodeJS
environment](https://github.com/Microsoft/ChakraCore/wiki/Roadmap#enhancing-host--platform-support)
(which appears to use the Chrome Debug Protocol), and that [Firefox actually
supports it right
now](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/WebReplay#Comparison_with_other_projects).

It is not clear to me whether DAP has any level of support for record/replay or
reverse debugging. Looks like at least the VS Code Node.js debugger [uses
this](https://github.com/microsoft/vscode-debugadapter-node/blob/master/protocol/src/debugProtocol.ts#L751),
so that probably means it's in the protocol. I don't think MS would blow a hole
through the abstractions they defined for their own editor to support this for
just one language. At the least it has to be using a semi-reasonable extension
approach, and I know what to look for in code / specs to figure out what the
deal is here.

In summary:

I have a good grasp of the fundamentals of debugging, which I need to explain
here.

My technique sucks and I should improve it.
