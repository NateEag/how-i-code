Optimizing Website Resource Consumption
=======================================

When you want to cut down on a website's resource consumption, drive the
process with production webserver logs.

.. TODO Add link to essay on optimizing, as it's a fundamental skill.

`nginx
<http://nginx.org/en/docs/http/ngx_http_log_module.html#var_request_time>`__,
`Apache <http://httpd.apache.org/docs/current/mod/mod_log_config.html>`__, and
`IIS
<https://support.microsoft.com/en-us/help/944884/description-of-the-time-taken-field-in-iis-6-0-and-iis-7-0-http-loggin>`__
all offer a way to log how long every request took.

Add that to your server logging output and collect them for a few days.

Analyze those logs to generate a list of extant HTTP resources sorted in
descending order by total time taken to serve them.

Grouping URLs correctly is the hardest part of this analysis, and may require
spending quality time with the site's URL routing logic.

Now work your way down the list, optimizing each resource in turn.

This process should guarantee that you optimize your most expensive operations
first, and also that you aren't solving `hypothetical problems
</hypotheticals-are-deadly.html>`__.

If you want to reduce bandwidth consumption, do an analogous process but
measure response size rather than response time. Do not fall into the trap of
tweaking textual responses to minimize their size - `gzip is smarter than you
<https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Encoding>`__.
Redesigning your data structures may be wise, but mangling your existing ones
chasing bytes is not.

Note that reducing resource consumption is a different goal than improving a
product responsiveness for end users. The two goals are not unrelated, but be
careful not to aim for one when you should be focusing on the other.
