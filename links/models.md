## Models

- <a target="_blank" href="https://docs.github.com/en/copilot/reference/ai-models/model-comparison">AI model comparison - GitHub Docs</a>
- <a target="_blank" href="https://docs.github.com/en/copilot/reference/ai-models/model-hosting">Hosting of models for GitHub Copilot Chat - GitHub Docs</a> (where hosted, no training, no retention, etc.)
- <a target="_blank" href="https://github.blog/changelog/2025-11-20-enterprise-bring-your-own-key-byok-for-github-copilot-is-now-in-public-preview/">Enterprise bring your own key (BYOK) for GitHub Copilot is now in public preview - GitHub Changelog</a> (Nov 20, 2025)


{% include collapsible-sections.html sections="Available Models, Model Usage Recommendations" %}

<details data-section="Available Models">
<summary><strong>Available Models</strong></summary>

- <a target="_blank" href="https://docs.github.com/en/copilot/reference/ai-models/model-comparison">AI model comparison - GitHub Docs</a>
- <a target="_blank" href="https://docs.github.com/en/copilot/reference/ai-models/model-hosting">Hosting of models for GitHub Copilot Chat - GitHub Docs</a> (where hosted, no training, no retention, etc.)
- <a target="_blank" href="https://github.blog/changelog/2025-11-20-enterprise-bring-your-own-key-byok-for-github-copilot-is-now-in-public-preview/">Enterprise bring your own key (BYOK) for GitHub Copilot is now in public preview - GitHub Changelog</a> (Nov 20, 2025)

</details>

<details data-section="Model Usage Recommendations">
<summary><strong>Model Usage Recommendations</strong></summary>

This is not official in any way, just guidance based on experience and the resources above.
No need to argue with me or tell me I'm wrong, just try it out and see if it works for you.
Your mileage may vary, and the best way to find out is to experiment with different models for different tasks and languages and see what works best for you.

| SDLC Phase              | Recommended Model                  | Rationale                                                       |
|-------------------------|------------------------------------|-----------------------------------------------------------------|
| Planning/Requirements   | GPT-5.4 (High)                     | Multi-step problem solving and architecture-level code analysis |
| Architecture            | GPT-5.4 (High)                     | Complex reasoning, system design trade-offs                     |
| UI/UX Design            | Claude Opus 4.6                    | Best for CSS, visual design, layout, frontend work              |
| Development             | GPT-5.3-Codex (High)               | Code-specialized model, best for implementation                 |
| Code Review             | Claude Opus 4.6 or Sonnet          | Good for review without heavy compute                           |
| Testing                 | GPT-5.3-Codex (High)               | Code-aware model great for test generation                      |
| Documentation           | Claude Haiku or  GPT-5.4 Mini      | Fast, reliable answers to lightweight coding questions          |
| Deployment/DevOps       | GPT-5.3-Codex (High)               | Agentic tasks, IaC, pipeline YAML, scripting                    |

</details>
