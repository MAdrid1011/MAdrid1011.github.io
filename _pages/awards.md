---
layout: page
permalink: /awards/
title: awards
description: Academic honors, scholarships, and competition distinctions.
nav: true
nav_order: 3
---

<link rel="stylesheet" href="{{ '/assets/css/awards.css' | relative_url }}">

{% assign awards = site.data.awards %}

<div class="awards-showcase">
  <div class="award-section-heading">
    <div>
      <span class="award-kicker">Honors & Distinctions</span>
      <h2>Academic journey</h2>
    </div>
    <p>Scholarships, academic distinctions, teaching recognition, and leadership honors.</p>
  </div>

  <section class="award-grid" aria-label="Honors and awards">
    {% for award in awards %}
      <article class="award-card award-tier-{{ award.tier }}">
        <div class="award-card-topline">
          <span class="award-card-icon"><i class="fa-solid {{ award.icon }}" aria-hidden="true"></i></span>
          <span class="award-card-badges">
            <span class="award-level">{{ award.level_label }}</span>
            <span class="award-year">{{ award.year }}</span>
          </span>
        </div>
        <span class="award-category">{{ award.category_label }}</span>
        <h3>{{ award.title }}</h3>
        <p class="award-awarder">{{ award.awarder }}</p>
        {% if award.summary %}
          <p class="award-summary">{{ award.summary }}</p>
        {% endif %}
      </article>
    {% endfor %}
  </section>
</div>
