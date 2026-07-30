---
layout: page
permalink: /teaching/
title: Teaching
description: Invited lectures, processor-design training, and course teaching in computer architecture and computing systems.
nav: true
nav_order: 5
---

<link rel="stylesheet" href="{{ '/assets/css/teaching.css' | relative_url }}">

<div class="teaching-list">
  {% for item in site.data.teaching %}
    <article class="teaching-card" style="--teaching-accent: {{ item.accent }};">
      <div class="teaching-visual" aria-hidden="true">
        <span class="teaching-year">{{ item.year }}</span>
        <span class="teaching-icon"><i class="fa-solid fa-{{ item.icon }}"></i></span>
        <span class="teaching-type">{{ item.type }}</span>
      </div>

      <div class="teaching-content">
        <div class="teaching-meta">
          <span class="teaching-role">{{ item.role }}</span>
          <span class="teaching-date"><i class="fa-regular fa-calendar" aria-hidden="true"></i>{{ item.date }}</span>
        </div>

        <h2>{{ item.title }}</h2>
        <p class="teaching-venue"><i class="fa-solid fa-building-columns" aria-hidden="true"></i>{{ item.venue }}</p>
        <p class="teaching-description">{{ item.description }}</p>

        <div class="teaching-tags" aria-label="Topics">
          {% for tag in item.tags %}
            <span>{{ tag }}</span>
          {% endfor %}
        </div>
      </div>
    </article>

{% endfor %}

</div>
