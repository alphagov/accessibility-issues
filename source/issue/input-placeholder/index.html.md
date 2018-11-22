---
layout: issue
title: Input uses placeholder
severity: 1
complexity: 1
prevalence: 2
detectability: 2
wcag:
concern: code, design
impairment: visual, cognitive
tags: form, contrast
related:
audittools:
  google: untested
  asqatasun: notfound
  tenon: notfound
  wave: notfound
  sortsite: notfound
  axe: notfound
  codesniffer: notfound
  achecker: notfound
  eiii: untested
  nu: notfound
  siteimprove: notfound
  fae: notfound
  aslint: warning
---

A search box uses the `placeholder` attribute to show the word "Search" inside it. It also has a hidden label saying "Search".


## Why it's a problem

A placeholder always has a low colour contrast. Visually impaired people might not be able to see it. When switching to different colours the placeholder text might become invisible or not change to a higher contrast.
Whether this is a problem or not depends on the context.

What might be confusing for people and add cognitive load is that

* it may look like there is actual text in the field
* in some browsers the text disappears when users click the field


## How to test for it

Most testing tools don't find it.
You would usually be able to visually see if a placeholder is used.


## How to fix it

Use a visible label element instead of a `placeholder` attribute.

You can also visually let the label appear as a placeholder. That would fix issues with colour changes but not the cognitive issue.

