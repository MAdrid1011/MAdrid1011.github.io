---
layout: page
permalink: /zh/cv/
title: 个人履历
description: 教育背景、科研成果、荣誉、专利、教学与学生工作经历。
nav: true
nav_order: 6
lang: zh-CN
translation_url: /cv/
toc:
  sidebar: left
---

<link rel="stylesheet" href="{{ '/assets/css/al-folio-cv.css' | relative_url }}">

{% assign cv = site.data.cv_zh.cv %}

<div class="cv">
  <a class="anchor" id="contact-information"></a>
  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">联系信息</h3>
    <table class="table table-cv table-sm table-borderless">
      <tr>
        <td class="p-1 pr-2 font-weight-bold"><b>姓名</b></td>
        <td class="p-1 pl-2 font-weight-light">{{ cv.name }}</td>
      </tr>
      <tr>
        <td class="p-1 pr-2 font-weight-bold"><b>身份</b></td>
        <td class="p-1 pl-2 font-weight-light">{{ cv.label }}</td>
      </tr>
      <tr>
        <td class="p-1 pr-2 font-weight-bold"><b>邮箱</b></td>
        <td class="p-1 pl-2 font-weight-light"><a href="mailto:{{ cv.email }}">{{ cv.email }}</a></td>
      </tr>
      <tr>
        <td class="p-1 pr-2 font-weight-bold"><b>所在地</b></td>
        <td class="p-1 pl-2 font-weight-light">{{ cv.address.region }}{{ cv.address.city }}</td>
      </tr>
      <tr>
        <td class="p-1 pr-2 font-weight-bold"><b>个人主页</b></td>
        <td class="p-1 pl-2 font-weight-light"><a href="{{ cv.website }}">{{ cv.website }}</a></td>
      </tr>
    </table>
  </div>

<a class="anchor" id="education"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">教育背景</h3>
    <div>
      {% assign entries = cv.sections.Education %}
      {% include cv/education.liquid %}
    </div>
  </div>

<a class="anchor" id="publications"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">学术论文</h3>
    <div>
      {% assign entries = cv.sections.Publications %}
      {% include cv/publications.liquid %}
    </div>
  </div>

<a class="anchor" id="honors"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">荣誉</h3>
    <div>
      {% assign entries = cv.sections['Honors and Awards'] %}
      {% include cv/awards.liquid %}
    </div>
  </div>

<a class="anchor" id="patents"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">发明专利</h3>
    <ul class="card-text font-weight-light list-group list-group-flush">
      {% for entry in cv.sections.Patents %}
        <li class="list-group-item">{{ entry.bullet | markdownify | remove: '<p>' | remove: '</p>' }}</li>
      {% endfor %}
    </ul>
  </div>

<a class="anchor" id="academic-service"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">学术服务</h3>
    <ul class="card-text font-weight-light list-group list-group-flush">
      {% for entry in cv.sections['Academic Service'] %}
        <li class="list-group-item">{{ entry.bullet | markdownify | remove: '<p>' | remove: '</p>' }}</li>
      {% endfor %}
    </ul>
  </div>

<a class="anchor" id="teaching"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">教学经历</h3>
    <ul class="card-text font-weight-light list-group list-group-flush">
      {% for entry in cv.sections.Teaching %}
        <li class="list-group-item">{{ entry.bullet | markdownify | remove: '<p>' | remove: '</p>' }}</li>
      {% endfor %}
    </ul>
  </div>

<a class="anchor" id="student-leadership"></a>

  <div class="card mt-3 p-3">
    <h3 class="card-title font-weight-medium">学生工作</h3>
    <ul class="card-text font-weight-light list-group list-group-flush">
      {% for entry in cv.sections['Student Leadership'] %}
        <li class="list-group-item">{{ entry.bullet | markdownify | remove: '<p>' | remove: '</p>' }}</li>
      {% endfor %}
    </ul>
  </div>
</div>
