---
layout: issue
title: Form field is missing a label
severity: 2
complexity: 1
prevalence: 3
detectability: 1
wcag: 1.3.1, 3.3.2, 4.1.2
concern: code
impairment: visual, motor
tags: form, label
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
  nu: notfound
  siteimprove: found
  fae: found
  aslint: found
---

A form field is preceded by a heading asking for a name but there is no label or anything else programmatically linked to the question.


## Why it's a problem

The label gets read out by **screen readers** when navigating the form to help identify immediately what the form field is about.
When the label is missing, screen reader users can only find it by navigating around and searching for the context. That takes longer and might be difficult for them to do.

Correctly marked up labels provide additional click space which makes it easier for people with **reduced motor skills** or people on **mobile phones** to activate the field.
When the label is missing, a form field is more difficult to hit.

**Speech recognition** users might activate the field by saying what they think is the label.
When the label is missing or not correctly associated with the field, those speech patterns won't work and users will take longer to activate the field.


## How to test for it

* The majority of automated tools will find missing labels. Most will also find incorrectly linked labels.
* When you click on a correctly implemented label, the associated form field receives focus. However, if text was linked to the field in other ways, this manual test cannot be used to determine that.
* There are some browser extensions and bookmarklets which can help highlight problems in forms.


## How to fix it

### Use a `label`

Provide a `label` element to go with the `input` and link them via their respective `for` and `id` attributes. This is by far the best way to fix it.

```
<label for="name">What is your name?</label>
<input id="name" [...] />
```

If you need to keep the heading, you can put the label inside it.
You can also accessibly hide the label and have both label and heading, but that would duplicate it for screen reader users.


### Use `aria-labelledby`

This works for screen reader users but still reduces the click space and makes it harder to activate for speech recognition users.

```
<h2 id="name-question">What is your name?</h2>
<input id="name" [...] aria-labelledby="name-question" />
```


### Use `aria-label`

This has the same disadvantages as `aria-labelledby` and is also problematic because it's easy to forget invisible things. That makes it harder to keep the label updated.

```
<input id="name" [...] aria-label="What is your name?" />
```
