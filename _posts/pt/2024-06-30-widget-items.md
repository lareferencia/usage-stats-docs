---

layout: post

title: "Componente de Visualização de Estatísticas por Item"  
date: 2024-06-30 14:53:14 +0200  
description: ""

language: pt  
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
      Este componente visual tem como objetivo apresentar as estatísticas de uso a nível de repositório, agregador nacional e agregador regional de um item, baseado no seu OAI identifier.
      Ele é mantido de forma centralizada em um CDN e pode ser incorporado na página do item em repositórios e portais.
      Para instalá-lo, é necessário coordenar com o nó nacional da LA Referencia correspondente, para garantir a presença de eventos.
    </p>
    <br/>
    <ul>  
        <li>
          <b>Código-fonte:</b> 
          <a href="https://github.com/lareferencia/lareferencia-stats-item-widget">
           https://github.com/lareferencia/lareferencia-stats-item-widget
          </a>
        </li>
    </ul>
    <ul>  
        <li>
          <b>Documentação de instalação:</b>
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
<h2 style="font-weight:bold">Como interpretar o widget?</h2>
<p>O widget é composto por 3 seções principais: um gráfico de anéis, um gráfico de barras e um mini-dashboard. Todos os elementos estão interligados e respondem dinamicamente aos seletores de nível e aos botões de período.
</p>
<br>

<div>
    <img style="width: 700px" src="{{site.baseurl}}/assets/img/widget-explanation.png">   
</div>

---