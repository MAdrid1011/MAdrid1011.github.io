---
layout: page
title: Projects
permalink: /projects/
description: Open-source processors, architecture prototypes, and peer-reviewed research artifacts.
nav: true
nav_order: 2
lang: en
translation_url: /zh/projects/
disable_masonry: true
disable_math: true
disable_image_tools: true
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
