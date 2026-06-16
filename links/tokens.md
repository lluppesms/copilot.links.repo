## Tokens

### Token Costs
- <a target="_blank" href="https://docs.github.com/en/copilot/reference/copilot-billing/models-and-pricing">Models and model pricing for GitHub Copilot</a> (GitHub Docs April, 2026) 
- <a target="_blank" href="https://github.com/devartifex/copilot-cost">See your GitHub Copilot CLI tokens and estimated spend at a glance</a><br />
Add-in for GHCP CLI to view cost live (repo developed by Microsoft CSA Gabriel Mercuri)
- <a target="_blank" href="https://white-cliff-095e8700f.7.azurestaticapps.net/ubb-aic-sizing-guide.html">How to Size AI Credit Budgets per User</a>

---

### Token Efficiency

- <a target="_blank" href="https://support.github.com/product-guides/github-copilot/accelerate-usage/improve-agent-quality-and-token-optimization">Improve agent quality and token optimization</a> (GitHub Support Article)
- <a target="_blank" href="https://learn.github.com/event/390d8d96-a2ba-4d80-aa8d-9f68b6bfaa3b">GitHub Copilot Token Optimization Workshop</a> (GH Recurring Webinar)
    > Note: You may be able to access this <a target="_blank" href="https://github.ondemand.goldcast.io/on-demand/bc6d09d4-04a5-4d16-9251-e0030d2b1d4b">previously recorded session</a>


- <a target="_blank" href="https://github.com/aj-enns/token-economy">Token Economy: Optimizing GitHub Copilot Chat & Agents under Usage-Based Billing</a><br />(Repo full of tips by a MS CSA - May 2026)
- <a target="_blank" href="https://learn.microsoft.com/en-us/azure/managed-grafana/grafana-opentelemetry-app-insights#github-copilot">How to Monitor AI coding agents with Grafana</a> (MS Learn)
- <a target="_blank" href="https://github.blog/ai-and-ml/github-copilot/improving-token-efficiency-in-github-agentic-workflows/">Improving token efficiency in GitHub Agentic Workflows</a> (GitHub Blog May 7, 2026)
    > The main focus of the article is the "agentic workflow" and how can they reduce token usage there. One of the options discussed is to limit the number of MCP servers because all that info is put into the system prompt every time, consuming tokens parsing that prompt every time, so they replaced some of those with straight CLI calls. Another topic was how not all tokens are the same because of the cost per model, so they use an "Effective Tokens" formula to normalize consumption. If you see 1M tokens consumed, it's important to know which model used those tokens because Opus costs 25x more than Haiku.
- <a target="_blank" href="https://www.youtube.com/watch?v=u57EnkQaUTY">What is Prompt Caching? Optimize LLM Latency with AI Transformers</a> (IBM YouTube Channel - Feb 2026)

---

### Interesting...
- <a target="_blank" href="https://github.com/rtk-ai/rtk/">CLI proxy that reduces LLM token consumption by 60-90% on common dev commands</a><br />
3rd Party GitHub Repo / Plug-in by rtk-ai 
    - (Note: I haven't verified or tested this yet, but it looks interesting!!!)
- <a target="_blank" href="https://github.com/JuliusBrussee/caveman">Why use many token when few do trick - talk like caveman - cut 65%</a><br />
3rd Party GitHub Repo / Plug-in by juliusBrussee
    - (Note: Caveman use few words - shrink tokens)
