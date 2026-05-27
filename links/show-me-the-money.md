## Show me the money!

- <a target="_blank" href="https://github.com/devartifex/copilot-cost">See your GitHub Copilot CLI tokens and estimated spend at a glance</a>  Add-in for GHCP CLI (repo developed by Microsoft CSA Gabriel Mercuri)

### Token Cost
- <a target="_blank" href="https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing">GH Docs: Models and pricing for GitHub Copilot</a> (Apr 27, 2026)

### Token Efficiency
- <a target="_blank" href="https://github.com/aj-enns/token-economy">Token Economy: Optimizing GitHub Copilot Chat & Agents under Usage-Based Billing</a> (Repo of tips by a MS CSA - May 2026)
- <a target="_blank" href="https://github.registration.goldcast.io/series/84c85b98-c505-4050-8aa0-7386079cf382">GitHub Copilot Token Optimization Workshop</a> (GH Recurring Webinar)
- <a target="_blank" href="https://learn.microsoft.com/en-us/azure/managed-grafana/grafana-opentelemetry-app-insights#github-copilot">How to Monitor AI coding agents with Grafana</a> (MS Learn)
- <a target="_blank" href="https://github.blog/ai-and-ml/github-copilot/improving-token-efficiency-in-github-agentic-workflows/">Improving token efficiency in GitHub Agentic Workflows</a> (GitHub Blog May 7, 2026)
    > The main focus of the article is the "agentic workflow" and how can they reduce token usage there. One of the options discussed is to limit the number of MCP servers because all that info is put into the system prompt every time, consuming tokens parsing that prompt every time, so they replaced some of those with straight CLI calls. Another topic was how not all tokens are the same because of the cost per model, so they use an "Effective Tokens" formula to normalize consumption. If you see 1M tokens consumed, it's important to know which model used those tokens because Opus costs 25x more than Haiku.

---

### Interesting...
- <a target="_blank" href="https://github.com/rtk-ai/rtk/">CLI proxy that reduces LLM token consumption by 60-90% on common dev commands</a><br />
3rd Party GitHub Repo / Plug-in by rtk-ai 
    - (Note: I haven't verified or tested this yet, but it looks interesting!!!)

- <a target="_blank" href="https://github.com/JuliusBrussee/caveman">Why use many token when few token do trick — cut 65% tokens by talking like caveman</a><br />
3rd Party GitHub Repo / Plug-in by juliusBrussee
    - (Note: Caveman few words - shrink token count)
