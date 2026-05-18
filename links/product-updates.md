## Product Updates

### Where to find release info and updates:

- VS Code Update Log: <a target="_blank" href="https://code.visualstudio.com/updates/">https://code.visualstudio.com/updates/</a>
- Copilot Update Log: <a target="_blank" href="https://github.blog/changelog/label/copilot/">https://github.blog/changelog/label/copilot/</a>
- Copilot CLI Update Log: - <a target="_blank" href="https://github.com/github/copilot-cli/releases">https://github.com/github/copilot-cli/releases</a>
- Copilot SDK Update Log: - <a target="_blank" href="https://github.com/github/copilot-sdk/releases">https://github.com/github/copilot-sdk/releases</a>

---

### New App Updates
- <a target="_blank" href="https://github.blog/changelog/2026-05-14-github-copilot-app-is-now-available-in-technical-preview/">GitHub Copilot app is now available in technical preview!</a> (GitHub Blog - May 14, 2026)
- <a target="_blank" href="https://github.com/github/app/releases">GitHub Copilot app installer</a>

---

### VS Code - April 2026 Changes

- <a target="_blank" href="https://github.blog/changelog/2026-05-06-github-copilot-in-visual-studio-code-april-releases/">See full blog for summary of changes in April </a>

![Custom Chat Evaluations](./images/VSCode-2026-04.png)

#### Version Info
- <a target="_blank" href="https://code.visualstudio.com/updates/v1_119">v1.119</a>
- <a target="_blank" href="https://code.visualstudio.com/updates/v1_118">v1.118</a>
- <a target="_blank" href="https://code.visualstudio.com/updates/v1_117">v1.117</a>
- <a target="_blank" href="https://code.visualstudio.com/updates/v1_116">v1.116</a>

---

### My notes from April releases:

#### **Markdown View Toggle**
Enabled markdown view toggle - Shift-Control-V == toggle source view vs preview mode view

#### **Improving token efficiency**
Several changes internally to improve effiency without degrading agent quality, such as better prompt caching and search tools.

#### **Dedicated context for skills** (Experimental)

> Setting:   github.copilot.chat.skillTool.enabled

When you use a skill that performs multi-step tool calls or pulls in large reference material, that auxiliary content can crowd your main chat context and degrade the quality of follow-up responses. You can now run a skill in a dedicated subagent context that isolates its execution from the main conversation, so your primary context stays focused and skill responses remain higher quality. To run a skill in a dedicated subagent context, set the context attribute in the SKILL.md frontmatter:
    
``` yml
    name: my-skill
    description: My skill description
    context: fork
```
    
#### **Chronicle** (Experimental)
> Setting:   github.copilot.chat.localIndex.enabled

As you rely more on Copilot, your chat history becomes a valuable record of what you worked on, which files you touched, and which PRs and issues you referenced. But that history is hard to revisit: scrolling through past sessions to remember what you did yesterday or to prepare for a standup is slow, and there's no easy way to ask questions across sessions or learn from your own usage patterns.
Chronicle solves this by tracking your chat interactions in a local SQLite database. Every time you chat, it records session metadata (branch, repo, timestamps), conversation turns, files touched via tool calls, and external references (PRs, issues, commits), so you can search and summarize your coding activity on demand. Chronicle can also analyze your usage to give you personalized tips on how to improve your prompting and tool usage.
Chronicle exposes a few commands you can use in chat to query your session history and get insights about your coding activity:
- **/chronicle:standup**: Generates a standup report from the last 24 hours of coding sessions, grouped by feature/branch, with summaries, file lists, and PR links.
- **/chronicle:tips**: Analyzes 7 days of usage to give personalized tips on prompting, tool usage, and workflow.
- **/chronicle [your-query]**: Free-form natural language queries against session history (for example, "what files did I edit yesterday?").
This feature is experimental and requires the   github.copilot.chat.localIndex.enabled setting to be enabled.
