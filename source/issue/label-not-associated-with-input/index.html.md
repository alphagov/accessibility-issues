---
layout: issue
title: Label not associated with input
severity: 2
complexity: 1
prevalence: 3
detectability: 1
wcag: 1.3.1, 3.3.2, 4.1.2
concern: code
impairment: visual, motor
tags: form, label
related:
  - missing-label
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
  nu: notfound
  siteimprove: found
  fae: found
  aslint: found
---

A form field is preceded by a label asking for a name but the label is not associated with input due to one of the following:
- the label is not correctly linked to the question due to a typo on the `for` attribute
- the `for` attribute is missing


## Why it's a problem

It is a problem for the same reasons of [not having a label at all](../missing-label/).


## How to test for it

This can be tested the same way as [not having a label at all](../missing-label/).


## How to fix it

The `for` attribute of the label must always match the `id` attribute of the form field.

```
<label for="name">What is your name?</label>
```
