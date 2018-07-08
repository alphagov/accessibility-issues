---
layout: issue
title: Group of form fields has inappropriate legend
severity: 2
complexity: 2
prevalence: 2
detectability: 3
wcag: 1.3.1, 2.4.6
concern: code, content
impairment: visual
tags: form, legend
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

A heading asks the question "How many planets are in our solar system?" and a group of radio buttons saying "8" and "9" have the legend "Don't count Pluto.".


## Why it's a problem

The legend gets read out by screen readers alongside the label when navigating the form to help identify immediately what the form field is about.
When the legend doesn't include the question, it will make it difficult for screen reader users to understand the context and fill in the field.


## How to test for it

The majority of testing tools will not be able to find if an existing legend is appropriate or not.
Therefore, this needs to be tested manually.


## How to fix it

Make sure the legend contains everything a user needs to understand the context of the group. In this case that will be the question.

```
<legend>
  How many planets are in our solar system? (Don't count Pluto.)
</legend>
```

If the hint is short and important, it can be added to the question.
If the hint is longer and important, it can be connected to the question via `aria-describedby`.
