---
layout: page
permalink: /zh/publications/
title: 论文
description: 计算机体系结构与计算系统方向已发表及已接收论文。
nav: true
nav_order: 1
lang: zh-CN
translation_url: /publications/
disable_masonry: true
disable_math: true
scholar:
  sort_by: [year, collaboration_priority]
  order: [descending, ascending]
---

<link rel="stylesheet" href="{{ '/assets/css/publications-custom.css' | relative_url | bust_file_cache }}">

<div class="publications publications-by-role">

<section class="publication-group" aria-labelledby="first-author-papers">
  <h2 class="bibliography publication-group-heading" id="first-author-papers">第一作者论文</h2>

{% bibliography --group_by none --query @*[publication_role=first]* %}

</section>

<section class="publication-group" aria-labelledby="collaborative-papers">
  <h2 class="bibliography publication-group-heading" id="collaborative-papers">合作论文</h2>

{% bibliography --group_by none --query @*[publication_role=collaboration]* %}

</section>

</div>
