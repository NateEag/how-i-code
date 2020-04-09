Optimizing Website Resource Consumption
=======================================

.. TODO Generalize this advice to be about the value of replayable logs? Given
   a codebase that logs all inbound HTTP requests and black-box infrastructure
   running it (like an AMI), you can use the logs to get the list of unique
   URLs, establish a control set of unique requests and responses, then build a
   new, version-controlled infrastructure. Add nginx as a load balancer with
   the ngx_http_mirror_module and you could even run a control and experimental
   server against live prod data to see how the two compare, like a
   language-agnostic version of Ruby's Scientist library.

When you want to cut down on a website's resource consumption, drive the
process from production webserver logs.

.. TODO Add link to essay on optimizing, as it's a fundamental skill.

`nginx
<http://nginx.org/en/docs/http/ngx_http_log_module.html#var_request_time>`__,
`Apache <http://httpd.apache.org/docs/current/mod/mod_log_config.html>`__, and
`IIS
<https://support.microsoft.com/en-us/help/944884/description-of-the-time-taken-field-in-iis-6-0-and-iis-7-0-http-loggin>`__
all offer a way to log how long every request took.

Add time to fulfill request to your webserver logs. Collect logs for a few
days.

Use the logs to generate a list of extant HTTP resources sorted in descending
order by total time taken to serve them.

Grouping URLs correctly is the only interesting part of this analysis, and may
require spending quality time with the site's URL routing logic. Alternatively,
you can customize your backend to set `custom response headers
<https://docs.honeycomb.io/getting-data-in/integrations/webservers/nginx/#embedding-custom-response-headers>`__
so that all requests to dynamic endpoints are augmented with an *endpoint*
identifier, making it much easier to do the aggregate analysis.

Now work your way down the list, optimizing each resource in turn.

Pay special attention to how dynamic resources need to be - many can be [cached
client-side](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/304) or
[server-side](https://varnish-cache.org/faq/what.html#vcl). Resources that are
created and updated via a clear 'publish' action can be precomputed at publish
time.

This process should guarantee that you optimize your most expensive operations
first, and also that you aren't solving `hypothetical problems
</hypotheticals-are-deadly.html>`__.

If you want to reduce bandwidth consumption, do an analogous process but
measure response size rather than response time. Do not fall into the trap of
tweaking textual responses to minimize their size - `gzip is smarter than you
<https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Encoding>`__.
Redesigning your data structures to only include necessary information may be
wise, but mangling your existing ones chasing bytes is not.

Note that reducing resource consumption is a different goal than improving
perceived end user experience. The two goals are not unrelated, but be careful
not to optimize one when you should be focusing on the other.
