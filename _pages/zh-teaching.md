---
layout: page
permalink: /zh/teaching/
title: 教学
description: 计算机体系结构与计算系统方向的受邀讲座、处理器设计培训和课程教学经历。
nav: true
nav_order: 5
lang: zh-CN
translation_url: /teaching/
---

<link rel="stylesheet" href="{{ '/assets/css/teaching.css' | relative_url }}">

<div class="teaching-list">
  {% for item in site.data.teaching_zh %}
    <article class="teaching-card" style="--teaching-accent: {{ item.accent }};">
      {% if item.poster %}
        <div class="teaching-visual teaching-poster teaching-poster-{{ item.poster_fit | default: 'cover' }}">
          <img src="{{ item.poster | relative_url }}" alt="{{ item.poster_alt }}" data-zoomable loading="lazy">
          <span class="teaching-poster-hint" aria-hidden="true"><i class="fa-solid fa-magnifying-glass-plus"></i> 查看图片</span>
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

        <div class="teaching-tags" aria-label="主题">
          {% for tag in item.tags %}
            <span>{{ tag }}</span>
          {% endfor %}
        </div>
      </div>
    </article>

{% endfor %}

</div>
