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

<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/product-updates.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/billing.md %}
</div>

---

<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agents.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agentic-frameworks.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/agentic-workflow.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/articles.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/azure-devops.md %}
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
{% include_relative links/github-migration.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/hooks.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/labs.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/languages.md %}
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
{% include_relative links/memories.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/models.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/model-selection.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/modernization-skills.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/security-info.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/tokens.md %}
</div>
<hr class="section-sep">
<div class="link-section" markdown="1">
{% include_relative links/skills.md %}
</div>

<hr class="section-sep">
<div class="link-section" markdown="1">
<br/>
<a href="https://lluppesms.github.io/copilot.links.repo/memes/" style="display: inline-block; padding: 12px 18px; background: #f0f0f0; border-radius: 6px; text-decoration: none; color: #333; font-weight: bold;">😄 Check out my favorite AI memes!</a>
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
      var name = h2.textContent.trim();
      section.dataset.sectionname = name;
      var opt = document.createElement('option');
      opt.value = name;
      opt.textContent = name;
      select.appendChild(opt);
    }
  });

  function normalizeCategoryName(value) {
    return (value || '')
      .toLowerCase()
      .replace(/[^a-z0-9]+/g, '-')
      .replace(/^-+|-+$/g, '');
  }

  function findMatchingCategoryOption(rawValue) {
    if (!rawValue) return '';
    var lower = rawValue.toLowerCase();
    var normalized = normalizeCategoryName(rawValue);

    for (var i = 0; i < select.options.length; i++) {
      var optionValue = select.options[i].value;
      if (
        optionValue.toLowerCase() === lower ||
        normalizeCategoryName(optionValue) === normalized
      ) {
        return optionValue;
      }
    }

    return '';
  }

  function applyFilters() {
    var term = input.value.toLowerCase().trim();
    var category = select.value;

    sections.forEach(function (section) {
var sectionName = section.dataset.sectionname || '';
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

      // Auto-expand section when a specific category is selected via dropdown
      if (category && categoryMatch && show) {
        var body = section.querySelector('.section-body');
        var arrow = section.querySelector('.section-arrow');
        if (body) body.style.display = '';
        if (arrow) arrow.textContent = '▼︎';
      }

      var next = section.nextElementSibling;
      if (next && next.classList.contains('section-sep')) {
        next.style.display = (categoryMatch && show) ? '' : 'none';
      }
    });
  }

  select.addEventListener('change', applyFilters);
  input.addEventListener('input', applyFilters);

  // Set up h2 headings as collapse/expand toggles — all start collapsed
  sections.forEach(function(section) {
    var h2 = section.querySelector('h2');
    if (!h2) return;

    // Move all sibling nodes after h2 into a wrapper div
    var body = document.createElement('div');
    body.className = 'section-body';
    body.style.display = 'none';
    var nodes = [];
    var node = h2.nextSibling;
    while (node) { nodes.push(node); node = node.nextSibling; }
    nodes.forEach(function(n) { body.appendChild(n); });
    section.appendChild(body);

    // Style h2 as a clickable toggle
    h2.style.cursor = 'pointer';
    h2.style.userSelect = 'none';
    var arrow = document.createElement('span');
    arrow.className = 'section-arrow';
    arrow.style.cssText = 'font-size:0.7em; margin-left:8px; color:#555; vertical-align:middle;';
    arrow.textContent = '▶︎';
    h2.appendChild(arrow);

    h2.addEventListener('click', function() {
      var open = body.style.display !== 'none';
      body.style.display = open ? 'none' : '';
      arrow.textContent = open ? '▶︎' : '▼︎';
    });
  });

  // Pre-select category and/or search term from the URL on page load.
  // Supported formats:
  //   ?billing           (bare key — matches category case-insensitively)
  //   ?category=Billing  (explicit key)
  //   ?search=some+text  (pre-fill the text filter)
  //   #billing           (hash fragment — same as bare key)
  (function applyUrlParams() {
    var params = new URLSearchParams(window.location.search);
    var matchedCategory = '';

    // Resolve requested category: ?category=X wins, then bare ?key, then #hash
    var requestedCategory = params.get('category');
    if (requestedCategory) {
      matchedCategory = findMatchingCategoryOption(requestedCategory);
    }

    if (!matchedCategory) {
      params.forEach(function (val, key) {
        if (!matchedCategory && val === '' && key !== 'search') {
          matchedCategory = findMatchingCategoryOption(key);
        }
      });
    }

    if (!matchedCategory && window.location.hash) {
      matchedCategory = findMatchingCategoryOption(
        decodeURIComponent(window.location.hash.slice(1))
      );
    }

    if (matchedCategory) {
      select.value = matchedCategory;
    }

    // Pre-fill search box: ?search=X
    var requestedSearch = params.get('search');
    if (requestedSearch) {
      input.value = requestedSearch;
    }

    if (matchedCategory || requestedSearch) {
      applyFilters();
    }
  })();
})();
</script>

