# copilot.links.repo

> *"The best link is the one you can actually find when you need it."*  
> — Lyle, probably at 11pm before a class

## Why Does This Exist?

Teaching GitHub Copilot classes is great fun — until a student asks "where did you find that?" for the fifth time and you realize your links are scattered across seventeen browser tabs, two sticky notes, and a napkin from a coffee shop.

This repo is the solution to that chaos. It's a curated, organized collection of GitHub Copilot links that I can hand off to students at the start (or end) of a class and say: *"Everything you need is right here."*

It covers cheat sheets, learning paths, FAQs, agent workflows, MCP resources, model info, skills, and more — all in one tidy place. No more napkins.

View the live page at: [https://lluppesms.github.io/copilot.links.repo/](https://lluppesms.github.io/copilot.links.repo/)

## How It Works

Each file in the `links/` directory holds one category of links in Markdown format. The `index.md` file stitches them all together into a single page, which Jekyll publishes to GitHub Pages automatically. Simple, boring, and it works perfectly — just like the best infrastructure should be.

## Adding or Updating Links

Found a great new resource? Don't hoard it — add it!

1. Edit the relevant category file in the `links/` directory (or create a new one for a new category).
2. If you created a new file, add it to `index.md` with `{% include_relative links/<filename>.md %}`.
3. Commit and push — a GitHub Action takes care of the rest and deploys the site automatically.

That's it. No build steps, no npm install, no Docker containers. Just Markdown and a push. 🎉
