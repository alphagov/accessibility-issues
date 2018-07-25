---
layout: issue
title: Page has no h1
severity: 2
complexity: 1
prevalence: 2
detectability: 2
wcag: 1.3.1
concern: code
impairment: visual
tags: headings
related:
audittools:
  google: notfound
  asqatasun: found
  tenon: notfound
  wave: warning
  sortsite: found
  axe: notfound
  codesniffer: found
  achecker: notfound
  eiii: notfound
  nu: notfound
  siteimprove: found
  fae: warning
  aslint: found
---

A page contains no level 1 heading (`h1`) but starts with an level 2 heading (`h2`).


## Why it's a problem

Screen reader users often navigate by headings. Having a good hierarchical structure lets them get an overview of what the page is about.

This is also beneficial for SEO.


## How to test for it

A lot of testing tools find this.

There are also browser extensions and bookmarklets which show a page's heading structure (also called document outline).


## How to fix it

Always let your main content start with an `h1`. This first heading should also reflect what the page is about.
