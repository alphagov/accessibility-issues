---
layout: issue
title: Image without alt attribute
severity: 2
complexity: 1
prevalence: 2
detectability: 1
wcag: 1.1.1
concern: code
impairment: visual
tags: image, alt
related:
audittools:
  google: found
  asqatasun: found
  tenon: found
  wave: found
  sortsite: found
  axe: found
  codesniffer: found
  achecker: found
  eiii: found
  nu: found
  siteimprove: found
  fae: found
  aslint: found
---

A decorative image is missing its `alt` attribute.


## Why it's a problem

A lot of screen readers read out the file name of the image when an `alt` text is missing. That is unhelpful and distracting.

It is also invalid HTML.


## How to test for it

All testing tools find this.


## How to fix it

If the image is decorative, add an empty `alt` parameter.

```
  <img src="logo.png" alt="" />
```

If the image is not decorative, add an `alt` parameter with text which describes the meaning of the image. [W3C's alt decision tree](https://www.w3.org/WAI/tutorials/images/decision-tree/) gives a good overview which text to add when.
