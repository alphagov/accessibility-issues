---
layout: issue
title: Icon has no text label
severity: 3
complexity: 2
prevalence: 3
detectability: 3
wcag: 1.1.1
concern: design
impairment: visual, cognitive
tags: image
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

A clickable icon that shows a down arrow doesn't have any accompanying text.


## Why it's a problem

Just an icon by itself can be difficult to understand by anyone as it can be ambiguous and unclear. This would be worse for people with cognitive impairments.

When the image doesn't load for whatever reason (for example due to a bad connection or firewall setting), the action behind the icon will be completely missed.

When people change colours on websites (for example, people with visual impairments who need a higher contrast or dyslexic people who need a tint), it can happen that background images will be removed. That also means that the action will be missed.

Speech recognition users would not know how to activate the icon as it's not clear what they should call it. With the button look missing, users wouldn't know that it could be activated with a button shortcut. The only way to click it would be by using "mouse grid" which is time-consuming.

As there is visually hidden alternative text in this case, this is not an issue for screen reader users.


## How to test for it

Disable images and see if everything still makes sense without them.
No testing tool finds this.


## How to fix it

Always accompany icons with text. Even when this can be a design challenge.
