---
layout: post

title: "04. Componente de visualización de estadísticas por ítem"
date: 2024-06-30 14:53:14 +0200
description: ""

language: es
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
      Este componente visual tiene como objetivo presentar las estadísticas de uso a nivel de repositorio, agregador nacional y agregador regional de un ítem basado en su oai-identifier. 
      Es mantenido en forma centralizada en un CDN y puede ser incrustrado en la página del item en repositorios y portales.
      Para poder instalarlo es necesario coordinar con el nodo nacional LA Referencia correspondiente para asegurar la presencia de evento. 
    </p>
    <br/>
    <ul>  
        <li>
          <b>Código fuente:</b> 
          <a href="https://github.com/lareferencia/lareferencia-stats-item-widget">
           https://github.com/lareferencia/lareferencia-stats-item-widget
          </a>
        </li>
    </ul>
    <ul>  
        <li>
          <b>Documentación de instalación:</b>
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
<h2 style="font-weight:bold">¿Cómo interpretar el widget?</h2>
<p>El widget se compone de 3 secciones principales, un gráfico de anillos, un grafico de barras y un mini-dashboard. Todos los elementos estan conectados y responden de manera dinamica a los selectores de nivel, y a los botones temporales.
</p>
<br>


<div>
    <img style="width: 700px" src="{{site.baseurl}}/assets/img/widget-explanation.png">   
</div>

