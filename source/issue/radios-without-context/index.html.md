---
layout: issue
title: Radios without context (example with multiple WCAG SC)
severity: 2
complexity: 2
prevalence: 3
detectability: 2
wcag: 1.3.1, 2.4.6, 3.3.2 (?)
concern: code, design, content
impairment: visual, motor
tags:
related:
  - inputs-with-same-name
---

A group of radio buttons saying "Yes" and "No" are preceded by a heading asking "Do you already have an account?".


## Why it's a problem

* Screen reader users would miss the context when tabbing through a form as "Yes" and "No" are not semantically linked to the question.


## How to test for it

* Most automated testing tools will find missing legends, but won't be able to detect if labels are descriptive by themselves without context.
* Use a screenreader and navigate either by tabbing or by form elements.


## How to fix it

### Label the group with a legend

```
<form>
  <fieldset>
    <legend>Do you already have an account?</legend>
    ...
  </fieldset>
</form>

```

### Make the options understandable without context

```
<label for="test-yes">Yes, I have an account</label>
...
<label for="test-yes">No, I don't have an account</label>

```

### Use `aria-describedby`

```
<h2 id="test-heading">
...
<input type="radio" name="test" id="test-yes" value="Yes" aria-describedby="test-heading" />

```
