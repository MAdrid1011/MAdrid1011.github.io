---
layout: page
permalink: /zh/honors/
title: 荣誉
description: 奖学金、学生评优、毕业论文、教学工作与学科竞赛。
nav: true
nav_order: 3
lang: zh-CN
translation_url: /honors/
---

<link rel="stylesheet" href="{{ '/assets/css/honors.css' | relative_url }}">

{% assign honors = site.data.honors_zh %}

<div class="honors-showcase">
  <ol class="honor-list" aria-label="荣誉">
    {% for honor in honors %}
      <li class="honor-item honor-tier-{{ honor.tier }} honor-category-{{ honor.category }}">
        <time class="honor-year">{{ honor.year }}</time>
        <div class="honor-copy">
          <span class="honor-title">{{ honor.title }}</span>
          {% if honor.summary %}
            <span class="honor-summary">{{ honor.summary }}</span>
          {% endif %}
        </div>
        <span class="honor-badges">
          <span class="honor-level">{{ honor.level_label }}</span>
          <span class="honor-category">{{ honor.category_label }}</span>
        </span>
      </li>
    {% endfor %}
  </ol>
</div>
