---
layout: home

title: "Inicio"
description: Inicio

language: es
language_reference: home

---

<div class="documentation-header">
  <h2 class="section-title">{% if page.language == "es" %}Documentación{% elsif page.language == "pt" %}Documentação{% else %}Documentation{% endif %}</h2>
  <p class="section-subtitle">{% if page.language == "es" %}Guías y documentación técnica{% elsif page.language == "pt" %}Guias e documentação técnica{% else %}Guides and technical documentation{% endif %}</p>
</div>

{% assign posts=site.posts | where: "language", page.language | sort: 'title' %}

<div class="post-items">
  {% for post in posts %}
    <div class="post-item">
      <h3 class="post-item-title">
        <a href="{{site.baseurl}}{{ post.url }}">{{ post.title }}</a>
      </h3>
      
      <div class="post-item-content">
        {{ post.excerpt }} 
        <a href="{{site.baseurl}}{{ post.url }}" class="post-item-more">
          {% if page.language == "es" %}Leer más{% elsif page.language == "pt" %}Ler mais{% else %}Read more{% endif %}
        </a>
      </div>
    </div>
  {% endfor %}
</div>

