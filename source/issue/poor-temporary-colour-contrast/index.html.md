---
layout: issue
title: Poor colour contrast in temporary state
severity: 1
complexity: 2
prevalence: 3
detectability: 1
wcag: 1.4.3
concern: design
impairment: visual
tags: link, focus, colour
related:
audittools:
  google: untested
  asqatasun: found
  tenon: notfound
  wave: notfound
  sortsite: notfound
  axe: notfound
  codesniffer: notfound
  achecker: notfound
  eiii: untested
  nu: notfound
  siteimprove: found
  fae: notfound
  aslint: notfound
---

The colour contrast of a link is not enough when focussed. Its contrast ratio is 4.07, so below the minimum requirement of 4.5.


## Why it's a problem

Some people with visual impairments need a high colour contrast. They might not be able to read text otherwise.
The same is true for people with a bad or misconfigured monitor or people who look at screens in bright sunlight.

Because this lesser contrast only happens when the link is focussed, people who cannot read the text can still read it when it's not focussed. But that requires the knowledge how to remove focus from a link and the extra cognitive load to do that.


## How to test for it

Only a minority of testing tools will find colour contrast issues when they are part of a different state.

You could use standalone colour contrast checkers. But finding all possible colour combinations in all possible states is the more difficult task.


## How to fix it

Increase the contrast. For example, choosing `#ffcd70` as the focus background colour meets the requirements.
But this introduces the conundrum that the focus state might not be clear enough for people with low vision to notice it.
