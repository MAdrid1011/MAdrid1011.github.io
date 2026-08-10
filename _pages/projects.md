---
layout: page
title: Projects
permalink: /projects/
description: Chip tapeout, intelligent computing systems, and open-source processor engineering.
nav: true
nav_order: 2
lang: en
translation_url: /zh/projects/
disable_masonry: true
disable_math: true
disable_image_tools: true
---

<link rel="stylesheet" href="{{ '/assets/css/projects.css' | relative_url | bust_file_cache }}">

<section class="featured-project-section" aria-labelledby="engineering-projects">
  <div class="featured-project-heading">
    <h2 id="engineering-projects">Engineering Practice</h2>
  </div>

  <div class="featured-project-grid">
    {% for item in site.data.projects %}
      <article class="featured-project-card" style="--project-accent: {{ item.accent }};">
        <a class="featured-project-visual featured-project-visual-{{ item.image_fit | default: 'cover' }} featured-project-visual-{{ item.visual_variant | default: 'single' }}" href="{{ item.url }}" target="_blank" rel="noopener noreferrer">
          {% if item.logos %}
            <span class="featured-project-logo-pair">
              {% for logo in item.logos %}
                <span><img src="{{ logo.image | relative_url }}" alt="{{ logo.image_alt }}" width="{{ logo.image_width }}" height="{{ logo.image_height }}"></span>
              {% endfor %}
            </span>
          {% elsif item.image_light %}
            <img class="only-light" src="{{ item.image_light | relative_url }}" alt="{{ item.image_alt }}" width="{{ item.image_width }}" height="{{ item.image_height }}">
            <img class="only-dark" src="{{ item.image_dark | relative_url }}" alt="{{ item.image_alt }}" width="{{ item.image_width }}" height="{{ item.image_height }}">
          {% else %}
            <img src="{{ item.image | relative_url }}" alt="{{ item.image_alt }}" width="{{ item.image_width }}" height="{{ item.image_height }}">
          {% endif %}
        </a>

        <div class="featured-project-content">
          <div class="featured-project-meta">
            <span>{{ item.category }}</span>
            <time>{{ item.dates }}</time>
          </div>
          <h3>{{ item.title }}</h3>
          <p class="featured-project-role">{{ item.role }}</p>
          <p>{{ item.description }}</p>
          <ul>
            {% for highlight in item.highlights %}
              <li>{{ highlight }}</li>
            {% endfor %}
          </ul>
          <a class="featured-project-link" href="{{ item.url }}" target="_blank" rel="noopener noreferrer">
            {{ item.link_label }} <i class="fa-solid fa-arrow-up-right-from-square" aria-hidden="true"></i>
          </a>
        </div>
      </article>
    {% endfor %}

  </div>
</section>

---

{% if site.data.repositories.github_users %}

## Open-source Profile

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    <div class="repo p-2 text-center">
      <a href="https://github.com/{{ user }}">
        <img class="only-light w-100" alt="GitHub statistics for {{ user }}" src="{{ '/assets/img/repositories/profile-' | append: user | append: '-light.svg' | relative_url }}">
        <img class="only-dark w-100" alt="GitHub statistics for {{ user }}" src="{{ '/assets/img/repositories/profile-' | append: user | append: '-dark.svg' | relative_url }}">
      </a>
    </div>
  {% endfor %}
</div>

---

{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
    <div class="repo p-2 text-center">
      <a href="https://github.com/{{ user }}">
        <span class="d-none d-sm-none d-md-block">
          <img class="only-light" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-6-light.svg' | relative_url }}" loading="lazy">
          <img class="only-dark" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-6-dark.svg' | relative_url }}" loading="lazy">
        </span>
        <span class="d-none d-sm-block d-md-none">
          <img class="only-light" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-4-light.svg' | relative_url }}" loading="lazy">
          <img class="only-dark" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-4-dark.svg' | relative_url }}" loading="lazy">
        </span>
        <span class="d-block d-sm-none">
          <img class="only-light" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-3-light.svg' | relative_url }}" loading="lazy">
          <img class="only-dark" alt="GitHub achievements for {{ user }}" src="{{ '/assets/img/repositories/trophies-' | append: user | append: '-3-dark.svg' | relative_url }}" loading="lazy">
        </span>
      </a>
    </div>
  </div>

---

{% endfor %}
{% endif %}
{% endif %}

{% if site.data.repositories.github_repos %}

## Open-source Repositories

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% assign repo_key = repo | replace: '/', '-' %}
    <div class="repo p-2 text-center">
      <a href="https://github.com/{{ repo }}">
        <img class="only-light w-100" alt="{{ repo }}" src="{{ '/assets/img/repositories/repo-' | append: repo_key | append: '-light.svg' | relative_url }}" loading="lazy">
        <img class="only-dark w-100" alt="{{ repo }}" src="{{ '/assets/img/repositories/repo-' | append: repo_key | append: '-dark.svg' | relative_url }}" loading="lazy">
      </a>
    </div>
  {% endfor %}
</div>
{% endif %}
