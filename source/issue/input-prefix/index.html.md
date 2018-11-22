---
layout: issue
title: Input prefix is not associated with input
severity: 1
complexity: 2
prevalence: 2
detectability: 3
wcag: 1.3.1, 2.4.6
concern: code, design, content
impairment: visual
tags: form, label
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

For example, a label asks for your annual salary and there is a pound sign in front of the input field. But that prefixed pound sign is not associated with the input field.


## Why it's a problem

Screen reader users any input prefix not associated with an input field. This can mean someone would add the wrong data.


## How to test for it

It's unlikely that testing tools will find the issue.


## How to fix it

### Add the prefix to the label

This is the clearest and easiest.

```
<label for="salary">
  What is your annual salary (in £)?
</label>
```

### Add `aria-describedby` to the input

```
<span class="visually-hidden" id="pound"> in </span>
£
<input aria-describedby="pound" id="salary" name="salary" type="text">
```

Apart from adding `aria-describedby`, it makes sense to add some more context. For example, Instead of just saying '£', say 'in £' to make it clearer when read in one sentence. You can hide the word 'in' in an accessible way so that it's not visible on the screen but only for screen reader users.


### Reposition prefix within label to be in front of input

This can be made to look exactly as before with the pound sign in front of the input. But it is more complex as positioning the prefix can be difficult, especially when considering users who change their font or font sizes.

```
<label for="salary">
  What is your annual salary
  <span class="visually-hidden"> (in </span>
  <span class="some-clever-stuff">£</span>
  <span class="visually-hidden">)</span>
  ?
</label>
```

