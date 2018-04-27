---
layout: issue
title: Image with text (sharing similar example)
severity: 2
complexity: 2
prevalence: 2
detectability: 1
wcag: 1.4.5
concern: code
impairment: visual, cognitive
tags: links
related:
  - empty-link-text
---


A link button uses an image with the word "Bookmark" on it. The image has the correct alt parameter saying the same, that is "Bookmark".


## Why it's a problem

* The text on the image cannot be customised. Some users can read better with adjusted font, font size or colours. For example, dyslexic users might prefer a different font, older users might prefer a bigger font size and users with light sensitivity might prefer different colours. That kind of customisation is not possible with an image.
* Translation tools cannot translate the text on the image.


## How to test for it

* Some automated testing tools will prompt you to manually check this but they cannot detect if there is text on the image or not.
* Test with a browser and change font settings or colours.


## How to fix it

Don't use images of text. Create the equivalent design with CSS instead.
