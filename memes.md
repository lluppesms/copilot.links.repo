---
layout: page
title: AI Memes
permalink: /memes/
---

<style>.site-header { display: none !important; }</style>

<div style="margin: 1.5em 0 1em; display: flex; gap: 10px; flex-wrap: wrap; align-items: center;">
  <select id="meme-select" style="flex: 1 1 200px; padding: 10px 14px; font-size: 1em; border: 1px solid #ccc; border-radius: 6px; background: #fff; cursor: pointer;">
    <option value="">-- Select a Meme --</option>
  </select>
</div>

<div id="meme-display" style="text-align: center; margin-top: 1.5em; display: none;">
  <img id="meme-image" src="" alt="" style="max-width: 100%; border-radius: 8px; box-shadow: 0 2px 12px rgba(0,0,0,0.15);" />
  <p id="meme-caption" style="margin-top: 0.75em; font-style: italic; color: #555;"></p>
</div>

<script>
  (function () {
    var baseUrl = '{{ site.baseurl }}';
    var tsvUrl = baseUrl + '/ImageList.tsv';
    var select = document.getElementById('meme-select');
    var display = document.getElementById('meme-display');
    var img = document.getElementById('meme-image');
    var caption = document.getElementById('meme-caption');

    fetch(tsvUrl)
      .then(function (res) { return res.text(); })
      .then(function (text) {
        var lines = text.trim().split('\n');
        // skip header row, collect entries
        var entries = [];
        for (var i = 1; i < lines.length; i++) {
          var parts = lines[i].split('\t');
          if (parts.length < 2) continue;
          var name = parts[0].trim();
          var desc = parts[1].trim();
          if (!name) continue;
          entries.push({ name: name, desc: desc });
        }
        // sort alphabetically by description
        entries.sort(function (a, b) {
          return a.desc.toLowerCase().localeCompare(b.desc.toLowerCase());
        });
        entries.forEach(function (entry) {
          var opt = document.createElement('option');
          opt.value = entry.name;
          opt.textContent = entry.desc;
          select.appendChild(opt);
        });
      })
      .catch(function (err) {
        console.error('Failed to load ImageList.tsv:', err);
      });

    select.addEventListener('change', function () {
      var chosen = select.value;
      if (!chosen) {
        display.style.display = 'none';
        return;
      }
      img.src = baseUrl + '/images/' + chosen;
      img.alt = select.options[select.selectedIndex].textContent;
      caption.textContent = select.options[select.selectedIndex].textContent;
      display.style.display = 'block';
    });
  })();
</script>
