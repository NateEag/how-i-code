A note I sent to myself that should be further evolved at some point.

If multiple classes need to use the same algorithm, and those classes do not
share state for that algorithm, it’s cleaner to implement it as a function.

A good example is sales tax. You could reasonably want Item::calc_sales_tax()
(preview item’s sales tax), Cart::calc_sales_tax() (estimate sales tax on your
current cart), and Order::calc_sales_tax() (final, canonical implementation),
but they do not share state – each one would feed a different price into the
algorithm.

Thus, the core algorithm should be a function, which each method should rely
on.
