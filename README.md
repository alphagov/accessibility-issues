# Accessibility issues

This tool is for collecting accessibility issues we find. This is to
* gather data to make better informed decisions (for example, to know which training will be most effective)
* create empathy by explaining or demonstrating why something is an issue
* make creators more efficient by providing ways to find issues and potential solutions

Read [how to contribute](CONTRIBUTING.md).


## Running the tool

The tool is based on the [tech docs template](https://alphagov.github.io/tech-docs-manual/).

### Getting started

To preview or build the website, we need to use the terminal.

Install Ruby with Rubygems, perferably with a [Ruby version manager][rvm],
and the [Bundler gem][bundler].

In the application folder type the following to install the required gems:

```
bundle install
```

### Making changes

To make changes edit the source files in the `source` folder.

### Preview

Whilst writing documentation we can run a middleman server to preview how the
published version will look in the browser. After saving a change the preview in
the browser will automatically refresh.

The preview is only available on our own computer. Others won't be able to
access it if they are given the link.

Type the following to start the server:

```
bundle exec middleman server
```

You should now be able to view a live preview at http://localhost:4567.

### Build

To build the static HTML files locally, type the following to build the HTML:

```
bundle exec middleman build
```

This will create a `build` subfolder in the application folder which contains
the HTML and asset files ready to be published.

To build and deploy to GitHub pages, type this:

```
rake publish
```

This will build, commit and push all the necessary files to the gh-pages branch,
which means all latest changes will be published.
Please make sure to only do that from the recent 'master' branch.


[rvm]: https://www.ruby-lang.org/en/documentation/installation/#managers
[bundler]: http://bundler.io/
