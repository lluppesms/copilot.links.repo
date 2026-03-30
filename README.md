# copilot.links.repo

A simple repository of curated GitHub Copilot links organized by category, published as a static site on GitHub Pages.

Live page is at: [https://lluppesms.github.io/copilot.links.repo/](https://lluppesms.github.io/copilot.links.repo/)

## Structure

```
links/
├── 01-faqs.md
├── 02-agentic-workflow.md
├── 03-general-repos.md
├── 04-cp-cli-sdk.md
├── 05-models.md
├── 06-cheat-sheets.md
├── 07-agents.md
├── 08-skills.md
├── 09-modernization-skills.md
├── 10-mcp.md
├── 11-boards.md
├── 12-code-indexes.md
└── 13-learning-paths.md
```

Each file in the `links/` directory contains a single category of links in Markdown format. The `index.md` file combines all categories into one cohesive document for the static site.

## Adding or Updating Links

1. Edit the relevant category file in the `links/` directory, or add a new numbered file for a new category.
2. Add the new file reference to `index.md` using `{% include_relative links/<filename>.md %}`.
3. Commit and push your changes.

## Publishing to GitHub Pages

The site is automatically deployed to GitHub Pages when changes are pushed to the `main` branch via the workflow in `.github/workflows/deploy-pages.yml`.

You can also trigger a manual deployment from the **Actions** tab by running the **Deploy to GitHub Pages** workflow.
