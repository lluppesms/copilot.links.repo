# copilot.links.repo

This is a repository of curated GitHub Copilot links organized by category, published as a static site on GitHub Pages.

View the live page at: [https://lluppesms.github.io/copilot.links.repo/](https://lluppesms.github.io/copilot.links.repo/)

## Structure

Each file in the `links/` directory contains a single category of links in Markdown format. The `index.md` file combines all categories into one cohesive document which is then published to a static site.

## Adding or Updating Links

1. Edit the relevant category file in the `links/` directory, or add a new file for a new category.
2. Add the new file reference to `index.md` using `{% include_relative links/<filename>.md %}`.
3. Commit and push your changes.

## Publishing to GitHub Pages

The site is automatically deployed to GitHub Pages by a GitHub Action when changes to the links pages are pushed to the repository.
