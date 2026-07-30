---
layout: page
title: projects
permalink: /projects/
description: Selected open-source processor and computer architecture projects.
nav: true
nav_order: 2
---

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.liquid repository=repo %}
  {% endfor %}
</div>
