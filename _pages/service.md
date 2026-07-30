---
layout: page
permalink: /service/
title: Service
description: Academic service and reviewing activities.
nav: true
nav_order: 6
---

<link rel="stylesheet" href="{{ '/assets/css/service.css' | relative_url }}">

<div class="service-list">
  {% for item in site.data.service %}
    <article class="service-card" style="--service-accent: {{ item.accent }};">
      {% if item.image %}
        <div class="service-visual">
          <a href="{{ item.url }}" target="_blank" rel="noopener noreferrer" aria-label="Visit the {{ item.image_label }} website">
            <img src="{{ item.image | relative_url }}" alt="{{ item.image_alt }}" loading="lazy">
            <span class="service-image-label">{{ item.image_label }}</span>
          </a>
          {% if item.image_credit %}
            <a class="service-image-credit" href="{{ item.image_credit_url }}" target="_blank" rel="noopener noreferrer">{{ item.image_credit }}</a>
          {% endif %}
        </div>
      {% else %}
        <div class="service-marker" aria-hidden="true">
          <span class="service-year">{{ item.year }}</span>
          <span class="service-icon"><i class="fa-solid fa-{{ item.icon }}"></i></span>
        </div>
      {% endif %}

      <div class="service-content">
        <div class="service-meta">
          <span>{{ item.category }}</span>
          <span><i class="fa-regular fa-calendar" aria-hidden="true"></i>{{ item.date }}</span>
        </div>
        <h2>{{ item.role }}</h2>
        <p class="service-venue">{{ item.venue }}</p>
        <p>{{ item.description }}</p>
        <div class="service-footer">
          <div class="service-tags" aria-label="Service categories">
            {% for tag in item.tags %}
              <span>{{ tag }}</span>
            {% endfor %}
          </div>
          {% if item.url %}
            <a class="service-link" href="{{ item.url }}" target="_blank" rel="noopener noreferrer">
              Conference Website <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
            </a>
          {% endif %}
        </div>
      </div>
    </article>

{% endfor %}

</div>
