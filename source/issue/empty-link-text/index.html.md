---
layout: issue
title: Empty link text (most complete example)
severity: 3
complexity: 1
prevalence: 2
detectability: 1
wcag: 2.4.4
concern: code
impairment: visual, motor
tags: links
related:
  - inaccessible-link-text
  - image-with-text
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
  siteimprove: notfound
  fae: found
  aslint: found
---

A link button seemingly says "Bookmark" but the link text is empty. The word "bookmark" is only part of an image which is set as the background image of the link.


## Why it's a problem

* Screen readers cannot read the background image and most will only say "link" followed by the URL. Screen reader users won't easily understand what the link is about and where it leads to.
* Someone using a speech recognition tool would naturally say "click bookmark" but that will fail as the tool doesn't see any text.


## How to test for it

* Most automated testing tools will find this.
* Test with any screen reader and navigate to the link to listen to what information it provides.
* Test with any tool which provides an overview of all the links out of context.
* Test with any speech recognition tool.


## How to fix it

### Add link text

The best option is to add text within the link, style it like the background image and don't use an image.

```
<a href="#">Bookmark</a>
```

If that is not feasable and there should not be extra visible text, you can accessibly hide the text.

```
<a href="#"><span class="visually-hidden">Bookmark</span></a>
```

### Add a `title` or `aria-label`

Try to avoid this if possible and only add `title` or `aria-label` as a last resort.

```
<a href="#" title="Bookmark"></a>
```

```
<a href="#" aria-label="Bookmark"></a>
```
