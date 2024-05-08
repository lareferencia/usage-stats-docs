---
layout: home

title: Inicio
description: Inicio

language: es
language_reference: home
---

<div class="flex" style=" padding-top:3rem; padding-bottom:3rem; justify-content: center">
  <img 
    src="{{ site.baseurl }}/assets/img/logo.png"
  />
</div>
<div class="post-item"></div>

{% assign posts=site.posts | where: "language", page.language %}

<ul class="post-item-list">
  {% for post in posts %}
    <li class="post-item">
        <a class="post-item-title" href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{site.baseurl}}{{ post.url }}">leer más</a>
    </li>
  {% endfor %}
</ul>

