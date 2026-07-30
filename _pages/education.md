---
layout: page
permalink: /education/
title: education
description: Academic training in computer science and technology, with interdisciplinary study in finance.
nav: true
nav_order: 4
---

<link rel="stylesheet" href="{{ '/assets/css/education.css' | relative_url }}">

<div class="education-grid">
  {% for item in site.data.education %}
    <article class="education-card education-card-{{ item.slug }}" style="--education-accent: {{ item.accent }};">
      <a class="education-logo-panel" href="{{ item.website }}" aria-label="Visit {{ item.institution }} website">
        <img src="{{ item.logo | relative_url }}" alt="{{ item.institution }} logo">
      </a>

      <div class="education-card-body">
        <div class="education-meta">
          <span class="education-stage">{{ item.stage }}</span>
          <span class="education-dates"><i class="fa-regular fa-calendar" aria-hidden="true"></i>{{ item.dates }}</span>
        </div>

        <h2><a href="{{ item.website }}">{{ item.institution }}</a></h2>

        <div class="education-facts">
          <div class="education-fact">
            <span class="education-fact-icon"><i class="fa-solid fa-building-columns" aria-hidden="true"></i></span>
            <div>
              <span class="education-fact-label">School / Center</span>
              <span class="education-fact-value">{{ item.unit }}</span>
            </div>
          </div>

          {% if item.program %}
            <div class="education-fact">
              <span class="education-fact-icon"><i class="fa-solid fa-star" aria-hidden="true"></i></span>
              <div>
                <span class="education-fact-label">Program</span>
                <span class="education-fact-value">{{ item.program }}</span>
              </div>
            </div>
          {% endif %}

          <div class="education-fact">
            <span class="education-fact-icon"><i class="fa-solid fa-graduation-cap" aria-hidden="true"></i></span>
            <div>
              <span class="education-fact-label">{{ item.qualification_label }}</span>
              <span class="education-fact-value">{{ item.qualification }}</span>
            </div>
          </div>
        </div>

        <div class="education-disciplines">
          <span class="education-disciplines-label">Field{% if item.disciplines %}s{% endif %}</span>
          <div class="education-tags">
            {% if item.disciplines %}
              {% for discipline in item.disciplines %}
                <span>{{ discipline }}</span>
              {% endfor %}
            {% else %}
              <span>{{ item.discipline }}</span>
            {% endif %}
          </div>
        </div>
      </div>
    </article>

{% endfor %}

</div>
