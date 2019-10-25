
const configContent* = """
# -*- coding: utf-8 -*-

# Basic Configuration
[BASIC]

# This is basically your brand
BASE_TITLE = Pine

# This is author name
SITE_AUTHOR = Pine

# A small description of your site.
SMALL_DESC = "This is a small description!"

# Is very important to set your site url correct or a lot of things will broke.
URL = "example.com"

# Setting Basic Meta Tags
[META]
META_DESC = Pine is a Nim static blog engine
META_KEY =  "Pine, Nim, blog, static"
META_AUTH = Pine

# Setting Google Analytics Code to Traffic Stats
[GA]
GA_CODE = UA-000000000-0

# Setting DISQUS_LINK with the link provided to you from DISQUS
# To enable comments in your Posts
[DISQUS]
DISQUS_LINK = disqus-link


# Setting Social Networks
[FACEBOOK]
FACEBOOK_LINK = link
[TWITTER]
TWITTER_LINK = link
[INSTAGRAM]
INSTAGRAM_LINK = link
[GITHUB]
GITHUB_LINK = link
[DRIBBBLE]
DRIBBLE_LINK = link



# Add share post functionality
[SHARE_POST]
ACTIVE = true


"""

