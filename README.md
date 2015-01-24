# VCCW for Theme Reviewing

This is a Vagrant configuration designed for theme reviewing.

## Getting started

1. Download .zip from [here](https://github.com/vccw-team/vccw-theme-review/releases).
1. Change directory into `vccw-for-theme-review-xxx`.
1. Put the .zip url of the theme to `site.yml`.
1. Run `vagrant up`.
1. Visit [http://wp-theme.dev/](http://wp-theme.dev/).

```
# encoding: utf-8
# vim: ft=ruby expandtab shiftwidth=2 tabstop=2

hostname: wp-theme.dev
ip: 192.168.33.100

version: latest
lang: en_US
title: This is the long blog name for the theme review

plugins:
  - dynamic-hostname
  - theme-check
  - debogger
  - log-deprecated-notices
  - monster-widget
  - wordpress-beta-tester
  - regenerate-thumbnails
  - debug-bar
  - dynamic-hostname

#
# WordPress Default Theme
#
theme: ''

#
# WordPress Options
#
options:
  blogdescription: This is a very very long tagline to reviewed in theme review proccess. Yeah!
  posts_per_page: "5"
  thread_comments: "1"
  thread_comments_depth: "3"
  page_comments: "1"
  comments_per_page: "5"
  large_size_w: ""
  large_size_h: ""

wp_debug: true
savequeries: true

theme_unit_test: true
theme_unit_test_uri: https://wpcom-themes.svn.automattic.com/demo/theme-unit-test-data.xml

reset_db_on_provision: true
```
