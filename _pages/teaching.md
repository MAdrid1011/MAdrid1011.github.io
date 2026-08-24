---
layout: page
permalink: /teaching/
title: Teaching
description: Invited lectures, processor-design training, and course teaching in computer architecture and computing systems.
nav: true
nav_order: 5
lang: en
translation_url: /zh/teaching/
disable_masonry: true
disable_math: true
---

<link rel="stylesheet" href="{{ '/assets/css/teaching.css' | relative_url | bust_file_cache }}">

{% assign teaching_sections = "lectures,courses" | split: "," %}

{% for section in teaching_sections %}

  <section class="teaching-section" aria-labelledby="teaching-{{ section }}">
    <div class="teaching-section-heading">
      {% if section == "lectures" %}
        <h2 id="teaching-{{ section }}">Lectures & Training</h2>
      {% else %}
        <h2 id="teaching-{{ section }}">Courses & Mentoring</h2>
      {% endif %}
    </div>

    <div class="teaching-list">
      {% for item in site.data.teaching %}
        {% if item.section == section %}
          <article class="teaching-card" style="--teaching-accent: {{ item.accent }};">
            {% if item.poster %}
              <div class="teaching-visual teaching-poster teaching-poster-{{ item.poster_fit | default: 'cover' }}">
                <img
                  src="{{ item.poster | relative_url }}"
                  alt="{{ item.poster_alt }}"
                  data-zoomable
                  loading="{% if forloop.first %}eager{% else %}lazy{% endif %}"
                  {% if forloop.first %}fetchpriority="high"{% endif %}
                  decoding="async"
                  width="{{ item.poster_width }}"
                  height="{{ item.poster_height }}"
                >
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

              <h3>{{ item.title }}</h3>
              <p class="teaching-venue"><i class="fa-solid fa-building-columns" aria-hidden="true"></i>{{ item.venue }}</p>
              <p class="teaching-description">{{ item.description }}</p>

              {% if item.outcomes %}
                <section class="teaching-outcomes" aria-label="{{ item.outcome_heading }}">
                  <h4><i class="fa-solid fa-trophy" aria-hidden="true"></i>{{ item.outcome_heading }}</h4>
                  <div class="teaching-outcome-grid">
                    {% for outcome in item.outcomes %}
                      <div class="teaching-outcome{% if forloop.first %} teaching-outcome-champion{% endif %}">
                        <strong>{{ outcome.value }}</strong>
                        <span>{{ outcome.label }}</span>
                        {% if outcome.note %}<em>{{ outcome.note }}</em>{% endif %}
                      </div>
                    {% endfor %}
                  </div>
                  {% if item.teams %}
                    <div class="teaching-team-grid">
                      {% for team in item.teams %}
                        <div class="teaching-team">
                          <span>{{ team.award }}</span>
                          <strong>{{ team.name }}</strong>
                          {% if team.members %}<p>{{ team.members }}</p>{% endif %}
                        </div>
                      {% endfor %}
                    </div>
                  {% endif %}
                </section>
              {% endif %}

              <div class="teaching-footer">
                <div class="teaching-tags" aria-label="Topics">
                  {% for tag in item.tags %}
                    <span>{{ tag }}</span>
                  {% endfor %}
                </div>
                {% if item.course_url %}
                  <a class="teaching-link" href="{{ item.course_url }}" target="_blank" rel="noopener noreferrer">
                    {% if item.slug == "ysyx-teaching-assistant" %}Project Website{% else %}Course Website{% endif %}
                    <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
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
