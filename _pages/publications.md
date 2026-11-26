---
layout: page
permalink: /publications/
title: Publications
description: Published and accepted papers in computer architecture and systems.
nav: true
nav_order: 1
lang: en
translation_url: /zh/publications/
disable_masonry: true
disable_math: true
scholar:
  sort_by: [year, collaboration_priority]
  order: [descending, ascending]
---

<!-- _pages/publications.md -->

<link rel="stylesheet" href="{{ '/assets/css/publications-custom.css' | relative_url | bust_file_cache }}">

<div class="publications publications-by-role">

<section class="publication-group" aria-labelledby="first-author-papers">
  <h2 class="bibliography publication-group-heading" id="first-author-papers">First-Author Papers</h2>

{% bibliography --group_by none --query @*[publication_role=first]* %}

</section>

<section class="publication-group" aria-labelledby="collaborative-papers">
  <h2 class="bibliography publication-group-heading" id="collaborative-papers">Collaborative Papers</h2>

{% bibliography --group_by none --query @*[publication_role=collaboration]* %}

</section>

</div>
