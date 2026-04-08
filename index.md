---
layout: home
title: GitHub Copilot Links
---

<style>.site-header { display: none !important; }</style>

Lyle's curated collection of GitHub Copilot links and resources

<div id="filter-controls" style="margin: 1.5em 0 1em; display: flex; gap: 10px; flex-wrap: wrap; align-items: center;">
  <select id="category-filter" style="flex: 0 0 auto; padding: 10px 14px; font-size: 1em; border: 1px solid #ccc; border-radius: 6px; background: #fff; cursor: pointer;">
    <option value="">All Categories</option>
  </select>
  <input type="text" id="link-filter" placeholder="🔍 Search these links for…" style="flex: 1 1 200px; padding: 10px 14px; font-size: 1em; border: 1px solid #ccc; border-radius: 6px; box-sizing: border-box;">
</div>

---

<div class="link-section" markdown="1">
{% include_relative links/agents.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agentic-workflow.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/boards.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/cheat-sheets.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/code-indexes.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/copilot-cli.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/copilot-sdk.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/general-repos.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/learning-paths.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/mcp.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/models.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/modernization-skills.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/security.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/skills.md %}
</div>

<hr class="section-sep">
<div class="link-section" markdown="1">
<a href="/memes/" style="display: inline-block; padding: 12px 18px; background: #f0f0f0; border-radius: 6px; text-decoration: none; color: #333; font-weight: bold;">😄 Check out my favorite AI memes!</a>
</div>


<script>
(function () {
  var select = document.getElementById('category-filter');
  var input = document.getElementById('link-filter');
  if (!select || !input) return;

  var sections = document.querySelectorAll('.link-section');

  // Populate dropdown from the H2 heading in each section
  sections.forEach(function (section) {
    var h2 = section.querySelector('h2');
    if (h2) {
      var opt = document.createElement('option');
      opt.value = h2.textContent.trim();
      opt.textContent = h2.textContent.trim();
      select.appendChild(opt);
    }
  });

  function applyFilters() {
    var term = input.value.toLowerCase().trim();
    var category = select.value;

    sections.forEach(function (section) {
      var h2 = section.querySelector('h2');
      var sectionName = h2 ? h2.textContent.trim() : '';
      var categoryMatch = !category || sectionName === category;

      var show = false;
      if (categoryMatch) {
        var items = section.querySelectorAll('li');
        var anyVisible = false;

        items.forEach(function (item) {
          var matches = !term || item.textContent.toLowerCase().includes(term);
          item.style.display = matches ? '' : 'none';
          if (matches) anyVisible = true;
        });

        show = !term || anyVisible;
      } else {
        // Hide all items in non-matching sections so text filter stays clean
        section.querySelectorAll('li').forEach(function (item) {
          item.style.display = '';
        });
      }

      section.style.display = (categoryMatch && show) ? '' : 'none';

      var next = section.nextElementSibling;
      if (next && next.classList.contains('section-sep')) {
        next.style.display = (categoryMatch && show) ? '' : 'none';
      }
    });
  }

  select.addEventListener('change', applyFilters);
  input.addEventListener('input', applyFilters);
})();
</script>

