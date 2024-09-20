---

layout: post

title: "Item-Level Statistics Visualization Component"  
date: 2024-06-30 14:53:14 +0200  
description: ""

language: en  
language_reference: widget-items

categories: post

published: true

---

<br/>

<div class="flex">

  <div>
    <img style="width: 850px" src="{{site.baseurl}}/assets/img/widget-items.png">   
  </div>

  <div style="padding: 2rem">
    <p>
      This visual component aims to present usage statistics at the repository, national aggregator, and regional aggregator levels for an item based on its OAI identifier.
      It is centrally maintained in a CDN and can be embedded on the item page in repositories and portals.
      To install it, it is necessary to coordinate with the corresponding LA Referencia national node to ensure the presence of events.
    </p>
    <br/>
    <ul>  
        <li>
          <b>Source code:</b> 
          <a href="https://github.com/lareferencia/lareferencia-stats-item-widget">
           https://github.com/lareferencia/lareferencia-stats-item-widget
          </a>
        </li>
    </ul>
    <ul>  
        <li>
          <b>Installation documentation:</b>
          <a href="https://github.com/lareferencia/lrw">
            https://github.com/lareferencia/lrw
          </a>
        </li>
    </ul>
  </div>

</div>

<br/>
<!--more-->

<div style="border-bottom: 1px solid #eee;"></div>

<br>
<h2 style="font-weight:bold">How to interpret the widget?</h2>
<p>The widget consists of 3 main sections: a ring chart, a bar chart, and a mini-dashboard. All elements are interconnected and respond dynamically to level selectors and time-range buttons.
</p>
<br>

<div>
    <img style="width: 700px" src="{{site.baseurl}}/assets/img/widget-explanation.png">   
</div>

---
