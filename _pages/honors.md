---
layout: page
permalink: /honors/
title: Honors
description: Scholarships, student awards, undergraduate theses, teaching, and academic competitions.
nav: true
nav_order: 3
lang: en
translation_url: /zh/honors/
---

<link rel="stylesheet" href="{{ '/assets/css/honors.css' | relative_url }}">

{% assign honors = site.data.honors %}

<div class="honors-showcase">
  <ol class="honor-list" aria-label="Honors">
    {% for honor in honors %}
      <li class="honor-item honor-tier-{{ honor.tier }} honor-category-{{ honor.category }}">
        <time class="honor-year">{{ honor.year }}</time>
        <div class="honor-copy">
          <span class="honor-title">{{ honor.title }}</span>
          {% if honor.summary %}
            <span class="honor-summary">{{ honor.summary }}</span>
          {% endif %}
        </div>
        <span class="honor-badges">
          <span class="honor-level">{{ honor.level_label }}</span>
          <span class="honor-category">{{ honor.category_label }}</span>
        </span>
      </li>
    {% endfor %}
  </ol>
</div>
