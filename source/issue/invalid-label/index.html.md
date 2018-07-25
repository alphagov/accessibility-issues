---
layout: issue
title: Label is invalid
severity: 1
complexity: 2
prevalence: 1
detectability: 1
wcag: 4.1.1, 2.4.6
concern: code
impairment: visual
tags: form, invalid
related:
audittools:
  google: untested
  asqatasun: untested
  tenon: untested
  wave: untested
  sortsite: untested
  axe: untested
  codesniffer: untested
  achecker: untested
  eiii: untested
  nu: untested
  siteimprove: untested
  fae: untested
  aslint: untested
---

The label for the form field for a National Insurance number contains a 'details' element explaining how to find the number.
That is invalid as only block elements are allowed in label elements.


## Why it's a problem

Invalid HTML can have unpredictable consequences in assistive technologies.
Even if the HTML was valid, the label contains too much text which can slow some screen reader users down.


## How to test for it

All HTML validity checkers should find it.


## How to fix it

Only have simple text in labels. Move the 'details' element outside.

Any further hints and explanations can be connected via `aria-describedby`.
