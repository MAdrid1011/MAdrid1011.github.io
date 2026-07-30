---
layout: page
permalink: /honors/
title: honors
description: Academic honors, scholarships, and competition distinctions.
nav: true
nav_order: 3
---

<link rel="stylesheet" href="{{ '/assets/css/honors.css' | relative_url }}">

{% assign honors = site.data.honors %}

<div class="honors-showcase">
  <section class="honor-grid" aria-label="Honors">
    {% for honor in honors %}
      <article class="honor-card honor-tier-{{ honor.tier }}">
        <div class="honor-card-topline">
          <span class="honor-card-icon"><i class="fa-solid {{ honor.icon }}" aria-hidden="true"></i></span>
          <span class="honor-card-badges">
            <span class="honor-level">{{ honor.level_label }}</span>
            <span class="honor-year">{{ honor.year }}</span>
          </span>
        </div>
        <span class="honor-category">{{ honor.category_label }}</span>
        <h3>{{ honor.title }}</h3>
        <p class="honor-awarder">{{ honor.awarder }}</p>
        {% if honor.summary %}
          <p class="honor-summary">{{ honor.summary }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </section>
</div>
