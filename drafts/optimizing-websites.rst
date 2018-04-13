Optimizing Websites
===================

I just had a realization that may be obvious to most web devs, but until
just now I had not realized it was an option.

When you want to cut down on a site's resource consumption, drive the process
with production webserver logs.

.. TODO Add link to essay on optimizing, as it's a fundamental skill.

`nginx
<http://nginx.org/en/docs/http/ngx_http_log_module.html#var_request_time>`__,
`Apache <http://httpd.apache.org/docs/current/mod/mod_log_config.html>`__, and
`IIS
<https://support.microsoft.com/en-us/help/944884/description-of-the-time-taken-field-in-iis-6-0-and-iis-7-0-http-loggin>`__
all offer a way to log how long every request took.

Add that to your server logging output and collect them for a few days.

Analyze those logs to generate a list of extant HTTP resources (backend
endpoints, if you will), sorted in descending order by total time taken to
serve them.

Grouping URLs correctly is the hardest part of this analysis, and may require a
lot of quality time spent with the app's URL routing logic.

Now work your way down the list, optimizing each resource in turn.

This process should guarantee that you're optimizing your most expensive
operations first, and also that you aren't solving `hypothetical problems
</hypotheticals-are-deadly.html>`__.

I'm not fully confident in this analysis. I could conceive of situations where
it might the wrong thing to take the long view, specifically when you have
evidence of specific operations and bottlenecks being a problem.

But, if you have vague reports like "The site is slow" or "this eats too many
resources" and you aren't sure where to start, this should be a good way to
organize an optimization effort.

If you want to reduce bandwidth consumption, do an analogous process but
measure response size rather than response time.
