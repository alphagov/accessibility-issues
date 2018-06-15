
# How to contribute

We plan to accept any useful contribution (improve issues, add new issues, add occurrence of existing issues, improvements to the layout or new overview pages, etc).
But for now we're testing this out only internally for a while before we will open it up to the public.


## How to add a new issue (or occurrence of an existing one)

To add a new issue copy the `source/issue/_template` folder into the same parent folder (`source/issue`) and give it a name of a consecutive number.

The folder contains the following files...

### `index.html.md` (required)

#### Frontmatter

Some of the meta data at the top of the file is required, some is optional.

* layout: required, keep the prefilled `issue`
* title: required
* severity: optional but recommended, a number between 1-3, 3 means it's such a big barrier that someone will not be able to complete a task, 1 means it's a small annoyance that someone will need a bit more time to complete a task
* complexity: optional but recommended, a number between 1-3, 3 means it's difficult to fix, 1 means it's easy to fix
* prevalence: optional, a number between 1-3, 3 means the issue is extremely common, 1 means it's quite rare (this might later be removed and be calculated from properly recorded occurrences)
* detectability: optional, a number between 1-3, 1 means the issue is easy to detect (manually or automatically), 3 means it's difficult to detect; this will be automatically calculated when `audittools` data is present (see below)
* wcag: WCAG Success Criterion, can be comma-separated list, has to be filled in if a criterion applies because leaving it empty will categorise the issue as 'best practice'
* concern: required, one or more of: code, design, content
* impairment: optional, one or more of: visual, motor, hearing, cognitive
* tags: optional, any comma-separated tags, not used in the output yet
* related: optional, list of related issues which need to be referring to a sibling issue folder name, these will appear underneath the main content in the output
* audittools: optional, test results of various automated accessibility testing tools; should ideally be tested as a whole, leave default 'untested' otherwise; these will appear at the very bottom of the output (if any value is other than 'untested')


#### Content (required)

The rest of the file contains standard Markdown. It can contain anything but the only thing required is that it should have a **description of the issue** which can be preceded by a screenshot or a video.
Suggested optional other sections:

* Why it's a problem: Explain which user group would have issues with it using which tools or configuration
* How to test for it: How to find that the issue exists, either manually or automatically
* How to fix it: Give examples of how this issue can be fixed


### `_example_[html|css|js].erb` (optional)

If the issue should display a code example, simply add any HTML into the `_example_html.erb` file, CSS into the `_example_css.erb` file and/or JS into the `_example_js.erb` file. If a code example should appear, at least the HTML file should have content.
As that code will be put together in an iframe, there is no need to use any classes.

When you are running the Middleman server you will see all changes straight away except when new example code files get added. In order to see the content of the iframe, you need to stop the server and start it again with
```
bundle exec middleman build
```

### `_occurrences.yml` (required)

Every time this issue is encountered, a new occurrence should be logged in this file.

Occurrences are so far the least defined. We decided to just start logging them without displaying them anywhere and to decide if and how and what to use or change later.
So, this is very much subject to change.

Every occurrence is one entry with the following structure:

* date: required, format is yyyy-mm-dd; it doesn't need to be very accurate, it's mainly there to be able to tell if there is a trend in issues appearing or disappearing over time
* site: optional, broad rough category where the issue appeared (for example, 'gov.uk')
* method: optional, how was the occurrence collected; the data will be more reliable if it was a full audit and can be used for calculation how common an issue is, otherwise it will be biased (values could be: audit, review, random)
* desc: optional, anything else; could be a description or contain a reference number or say where it was encountered exactly or initials of the person reporting it (to be determined what data exactly we want to collect here in the future based on what we collect for the first few issues)
