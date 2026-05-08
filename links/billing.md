## Billing

- <a target="_blank" href="https://github.blog/news-insights/company-news/github-copilot-is-moving-to-usage-based-billing/">Announcement: GitHub Copilot is moving to usage-based billing</a> (Apr 27, 2026)
- <a target="_blank" href="https://docs.github.com/en/copilot/concepts/billing/usage-based-billing-for-organizations-and-enterprises">GH Docs: Usage-based billing for organizations and enterprises</a> (Apr 27, 2026)
- <a target="_blank" href="https://github.blog/changelog/2026-04-27-github-copilot-code-review-will-start-consuming-github-actions-minutes-on-june-1-2026/">Announcement: GHCP Code Reviews will start consuming GH Actions minutes</a> (Apr 27, 2026)

### Token Cost and Usage
- <a target="_blank" href="https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing">GH Docs: Models and pricing for GitHub Copilot</a> (Apr 27, 2026)
- <a target="_blank" href="https://github.blog/ai-and-ml/github-copilot/improving-token-efficiency-in-github-agentic-workflows/">Improving token efficiency in GitHub Agentic Workflows</a> (GitHub Blog May 7, 2026)
    > The main focus of the article is the "agentic workflow" and how can they reduce token usage there. One of the options discussed is to limit the number of MCP servers because all that info is put into the system prompt every time, consuming tokens parsing that prompt every time, so they replaced some of those with straight CLI calls. Another topic was how not all tokens are the same because of the cost per model, so they use an "Effective Tokens" formula to normalize consumption. If you see 1M tokens consumed, it's important to know which model used those tokens because Opus costs 25x more than Haiku.
