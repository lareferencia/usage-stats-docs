---
layout: home

language: es
language_reference: index
---
<div class="flex" style=" padding-top:3rem; padding-bottom:3rem; justify-content: center">
  <img 
    src="{%- if page.language == 'es' -%}
    {{ site.baseurl }}/assets/img/logo.png
    {%- else -%}{{ site.baseurl }}/assets/img/logo-en.png
    {%- endif -%}"
  />
</div>

<div class="post-item"></div>

{% assign posts=site.posts | sort | where: "language", page.language %}

<ul class="post-item-list">
  {% for post in posts reversed %}
    <li class="post-item">
        <a class="post-item-title" href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a>
      {{ post.excerpt }} <a class="post-item-excerpt" href="{{site.baseurl}}{{ post.url }}">read more</a>
    </li>
  {% endfor %}
</ul>

