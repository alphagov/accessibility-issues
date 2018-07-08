---
layout: issue
title: Page title is not detailed enough
severity: 1
complexity: 1
prevalence: 2
detectability: 3
wcag: 2.4.2
concern: content
impairment: visual, cognitive
tags:
related:
audittools:
  google: notfound
  asqatasun: manual
  tenon: notfound
  wave: notfound
  sortsite: notfound
  axe: notfound
  codesniffer: manual
  achecker: manual
  eiii: notfound
  nu: notfound
  siteimprove: notfound
  fae: manual
  aslint: notfound
---

Page titles (or the content of `<title>` tags) of pages within the same service all include one keyword which is too simple and vague, although unique among all pages.
E.g. "Contact - Register your micropig" for a page which lets you "Enter your contact details" as the first heading says.


## Why it's a problem

* The page title is often the very first thing a screen reader reads out. It helps screen reader users to know quickly which page they are on and what it is about. When the page title is too short and unclear, it will make it difficult to get a quick overview of the content.
* Users often use page titles to identify a page, for example because it will be what a search engine uses as the link text to the page or it appears in users' bookmarks. Unclear page titles make those confusing.
* Search engines weigh content of page titles highly.


## How to test for it

Testing tools cannot identify the usefulness of a page title. This has to be tested manually, but additional tools can help making page titles more visible.


## How to fix it

The easiest way is to always use the same content as the first heading plus the static website title. E.g. "Enter your contact details - Register your micropig".

But the first part can also be something that is similar to the first heading and doesn't need to be the same.
