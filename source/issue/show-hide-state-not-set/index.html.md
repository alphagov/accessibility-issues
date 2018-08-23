---
layout: issue
title: State of collapsible content not set programmatically
severity: 3
complexity: 1
prevalence: 2
detectability: 3
wcag: 1.3.1
concern: code
impairment: visual
tags: state, disclosure, aria
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
  aslint: notfound
---

A button expands and collapses some initially hidden content underneath it. But it cannot be determined programmatically what the button does, so it does not get announced to screen readers.


## Why it's a problem

When the purpose of a button which expands hidden text is not announced to screen reader users, they don't have any way of knowing that there is more content. They would miss that additional content.
When the text of the button is clear (like here it changes from "Expand" to "Collapse"), this does not seem as bad, but screen readers do not announce this change of content, so users stay as clueless.


## How to test for it

Use a screen reader. Testing tools don't find this.


## How to fix it

Move the `aria-expanded` attribute to the element which triggers the show/hide functionality. Although it is [according to spec](https://www.w3.org/TR/wai-aria-1.1/#aria-expanded), it doesn't work with any of the major screen readers.
It is advised to then also add a `aria-controls` attribute which should include the `id` of the affected element.

```
<button aria-expanded="false" aria-controls="hidden-content">Expand</button>
```
