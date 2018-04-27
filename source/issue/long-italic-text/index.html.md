---
layout: issue
title: Long italic text (example without WCAG SC)
severity: 1
complexity: 2
prevalence: 2
detectability: 1
wcag:
concern: design
impairment: visual, cognitive
tags:
related:
  - uppercase-text
  - important-text-only-visual
---

Some longer text is all in italics.


## Why it's a problem

* Italic text can be harder to read for people, especially for dyslexic people.


## How to test for it

* Very few automated testing tools will find this.
* It has to be checked manually.


## How to fix it

* Remove the italics from the text.
* If something needs to be highlighted as important, do it via other visual and/or semantic means.
