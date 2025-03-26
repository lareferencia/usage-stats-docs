---
layout: home

title: "Home"
description: Home

language: en
language_reference: home

---

<div class="post-item"></div>

{% assign posts=site.posts | where: "language", page.language | sort: 'title' | reverse %}

<ul class="post-item-list">

  {% for post in posts %}
    <li class="post-item">
        <a class="post-item-title" href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a>
        <br/>
        <br/>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{site.baseurl}}{{ post.url }}">more</a>
    </li>
  {% endfor %}
</ul>

