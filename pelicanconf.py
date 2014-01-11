#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = u'Nate Eagleson'
SITENAME = u'How I Code'
SITEURL = ''
FEED_DOMAIN = 'http://howicode.nateeag.com'

TIMEZONE = 'America/New_York'

DEFAULT_LANG = u'en'
DEFAULT_DATE = 'fs'

DEFAULT_PAGINATION = False

THEME = 'themes/howicode'

JINJA_EXTENSIONS = ['jinja2.ext.ExprStmtExtension']

# Note that this is protocol-relative, since the current Piwik snippet decides
# which to use dynamically.
# ...not that this site actually has any secure URLs...
PIWIK_URL = '//www.nateeag.com/analytics/'
PIWIK_SITE_ID = 1
