---
layout: page
permalink: /teaching/
title: Teaching
description: Invited lectures, processor-design training, and course teaching in computer architecture and computing systems.
nav: true
nav_order: 5
lang: en
translation_url: /zh/teaching/
---

<link rel="stylesheet" href="{{ '/assets/css/teaching.css' | relative_url }}">

<div class="teaching-list">
  {% for item in site.data.teaching %}
    <article class="teaching-card" style="--teaching-accent: {{ item.accent }};">
      {% if item.poster %}
        <div class="teaching-visual teaching-poster teaching-poster-{{ item.poster_fit | default: 'cover' }}">
          <img src="{{ item.poster | relative_url }}" alt="{{ item.poster_alt }}" data-zoomable loading="lazy">
          <span class="teaching-poster-hint" aria-hidden="true"><i class="fa-solid fa-magnifying-glass-plus"></i> View image</span>
        </div>
      {% else %}
        <div class="teaching-visual" aria-hidden="true">
          <span class="teaching-year">{{ item.year }}</span>
          <span class="teaching-icon"><i class="fa-solid fa-{{ item.icon }}"></i></span>
          <span class="teaching-type">{{ item.type }}</span>
        </div>
      {% endif %}

      <div class="teaching-content">
        <div class="teaching-meta">
          <span class="teaching-role">{{ item.role }}</span>
          <span class="teaching-date"><i class="fa-regular fa-calendar" aria-hidden="true"></i>{{ item.date }}</span>
        </div>

        <h2>{{ item.title }}</h2>
        <p class="teaching-venue"><i class="fa-solid fa-building-columns" aria-hidden="true"></i>{{ item.venue }}</p>
        <p class="teaching-description">{{ item.description }}</p>

        <div class="teaching-footer">
          <div class="teaching-tags" aria-label="Topics">
            {% for tag in item.tags %}
              <span>{{ tag }}</span>
            {% endfor %}
          </div>
          {% if item.course_url %}
            <a class="teaching-link" href="{{ item.course_url }}" target="_blank" rel="noopener noreferrer">
              Course Website <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
            </a>
          {% endif %}
        </div>
      </div>
    </article>

{% endfor %}

</div>
