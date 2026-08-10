---
layout: page
permalink: /service/
title: Service
description: Academic service and student service.
nav: true
nav_order: 6
lang: en
translation_url: /zh/service/
disable_masonry: true
disable_math: true
disable_image_tools: true
---

<link rel="stylesheet" href="{{ '/assets/css/service.css' | relative_url | bust_file_cache }}">

{% assign service_sections = "academic,student" | split: "," %}

{% for section in service_sections %}

  <section class="service-section" aria-labelledby="service-{{ section }}">
    <div class="service-section-heading">
      {% if section == "academic" %}
        <h2 id="service-{{ section }}">Academic Service</h2>
      {% else %}
        <h2 id="service-{{ section }}">Student Service</h2>
      {% endif %}
    </div>

    <div class="service-list">
      {% for item in site.data.service %}
        {% if item.section == section %}
    <article class="service-card" style="--service-accent: {{ item.accent }};">
      {% if item.image %}
        <div class="service-visual service-visual-{{ item.image_fit | default: 'cover' }}">
          <a href="{{ item.url }}" target="_blank" rel="noopener noreferrer" aria-label="Visit the {{ item.image_label }} website">
            <img
              src="{{ item.image | relative_url }}"
              alt="{{ item.image_alt }}"
              loading="eager"
              fetchpriority="high"
              decoding="async"
              width="{{ item.image_width }}"
              height="{{ item.image_height }}"
            >
            {% if item.conference_name %}
              <span class="service-conference-overlay">
                <strong>{{ item.conference_name }}</strong>
                <span class="service-conference-name">{{ item.conference_full_name }}</span>
                <span class="service-conference-detail"><i class="fa-regular fa-calendar" aria-hidden="true"></i>{{ item.event_dates }}</span>
                <span class="service-conference-detail"><i class="fa-solid fa-location-dot" aria-hidden="true"></i>{{ item.event_location }}</span>
              </span>
            {% else %}
              <span class="service-image-label">{{ item.image_label }}</span>
            {% endif %}
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
        <h3>{{ item.role }}</h3>
        <p class="service-venue">{{ item.venue }}</p>
        {% if item.roles %}
          <ul class="service-roles">
            {% for role in item.roles %}
              <li><span>{{ role.date }}</span><strong>{{ role.title }}</strong></li>
            {% endfor %}
          </ul>
        {% endif %}
        <p>{{ item.description }}</p>
        <div class="service-footer">
          <div class="service-tags" aria-label="Service categories">
            {% for tag in item.tags %}
              <span>{{ tag }}</span>
            {% endfor %}
          </div>
          {% if item.url %}
            <a class="service-link" href="{{ item.url }}" target="_blank" rel="noopener noreferrer">
              {{ item.link_label }} <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
            </a>
          {% endif %}
        </div>
      </div>
    </article>
        {% endif %}
      {% endfor %}
    </div>

  </section>
{% endfor %}
