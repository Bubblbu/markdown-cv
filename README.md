# My CV

This is my CV template powered by structured data and rendered by Jekyll and Pandoc.

The web version is responsive and should also produce a pretty *meh* PDF version for now. More work to be done.

The original version was inspired from [Eliseo Papa](https://elipapa.github.io) markdown-cv template.

## Motivation

Instead of constantly rewriting and formatting CVs manually, I want to have the information stored in one place that I can display and render quickly depending on the demand. This kinda does the job for now.

## Current Features

- Templating provided by Jekyll
- Styling in SASS
- Grid layout and responsive design powered by PureCSS

## Editing the content

Currently, the layout is mostly driven by three kinds of content blocks which take a YAML files as inputs.

- Text block
- Data block
- Bibliographic block

Each section then populates the CV with the content from the YAML files. The YAML files are structured as a list of sections and subsections with their respective content.

## Roadmap

- Improve PDF stylesheet for printed versions
- Add second layout for a non-academic CV
- Improve the layouting templates to make it easier to edit content
