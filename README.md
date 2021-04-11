# My CV

> No more formatting CVs!

This is a CV template that takes your structured, biographic data stored in YAML to produce a responsive web CV that also prints out (*kinda*) nicely. Instead of constantly rewriting and formatting CVs manually for updates, the data is pulled in and rendered according to the current layout.

## Current Features

- Templating provided by Jekyll
- Styling in SASS
- Grid layout and responsive design powered by PureCSS

## Editing the content

Currently, the layout is mostly driven by three kinds of content blocks which take a YAML files as inputs.

- Text block
- Data block
- Bibliographic block

`index.md` determines the content of the CV. Using markdown code blocks you can specify which data file you want to load with the according content block type. For instance, to load the `papers.yml` file with the bibliographic content block include the following code snippet in your index file:

````markdown
```bib_section
papers
```
````

Each section then populates the CV with the content from the YAML files. The YAML files are structured as a list of sections and subsections with their respective content.

## Instructions

### Gemfiles to build and serve the CV

Bundler will take care of all dependencies required to build and serve the CV.

`bundle install` to install dependencies
`bundle exec jekyll serve -l` to live-preview the CV locally

### Easy push to Github Pages

This additional script is only required if you want to use Github Pages to have an online version of your CV.

`npm install gh-pages`
`npm run deploy` to push the CV to the `gh-pages` branch of your repo

## Roadmap

- [x] Improve PDF stylesheet for printed versions
- [ ] Use pandoc to render the bibliographic entries
- [ ] Add second layout for a non-academic CV

## Inspo

The original version was inspired  [Eliseo Papa](https://elipapa.github.io) markdown-cv template.