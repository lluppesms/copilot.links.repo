---
layout: home
title: GitHub Copilot Links
---

Lyle's curated collection of links and resources organized by category.

<div id="search-box" style="margin: 1.5em 0 1em;">
  <input type="text" id="link-filter" placeholder="🔍 Filter links…" style="width: 100%; padding: 10px 14px; font-size: 1em; border: 1px solid #ccc; border-radius: 6px; box-sizing: border-box;">
</div>

---

<div class="link-section" markdown="1">
{% include_relative links/cheat-sheets.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/learning-paths.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/faqs.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agentic-workflow.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/general-repos.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/cp-cli-sdk.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/models.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agents.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/skills.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/modernization-skills.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/mcp.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/boards.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/code-indexes.md %}
</div>

<script>
(function () {
  var input = document.getElementById('link-filter');
  if (!input) return;

  input.addEventListener('input', function () {
    var term = this.value.toLowerCase().trim();
    var sections = document.querySelectorAll('.link-section');

    sections.forEach(function (section) {
      var items = section.querySelectorAll('li');
      var anyVisible = false;

      items.forEach(function (item) {
        var matches = !term || item.textContent.toLowerCase().includes(term);
        item.style.display = matches ? '' : 'none';
        if (matches) anyVisible = true;
      });

      var show = !term || anyVisible;
      section.style.display = show ? '' : 'none';

      var next = section.nextElementSibling;
      if (next && next.classList.contains('section-sep')) {
        next.style.display = show ? '' : 'none';
      }
    });
  });
})();
</script>

