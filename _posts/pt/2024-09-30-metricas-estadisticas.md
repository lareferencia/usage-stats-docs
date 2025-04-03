---

layout: post

title: "06. Compreensão das Métricas de Uso"  
date: 2024-09-30 14:53:14 +0200  
description: "Explicação e interpretação das métricas principais"

language: pt
language_reference: metricas-estadisticas

categories: post

published: true

---

<div class="post-component">
  <div class="post-component-content">
    <p class="lead-highlight">
      As estatísticas apresentadas no widget e na plataforma LA Referencia são construídas a partir de eventos que ocorrem em três níveis: repositórios institucionais, agregadores nacionais e o agregador regional.
    </p>
  </div>
</div>

## Métricas em Diferentes Níveis

As estatísticas de uso apresentadas nas ferramentas da LA Referencia são construídas a partir de eventos que ocorrem em três níveis distintos:

1. **Repositórios institucionais** - Onde o conteúdo original está hospedado
2. **Agregadores nacionais** - Que coletam metadados dos repositórios dentro de um país
3. **Agregador regional** - LA Referencia, que integra registros de diferentes países da América Latina e também da Espanha

## Compreensão de Cada Métrica

A seguir, explicamos o significado de cada métrica, considerando as diferenças de acordo com o nível em que os eventos são gerados:

<div class="note-container">
  <div class="note-header">
    <h4>Visita</h4>
  </div>
  <div class="note-content">
    <p>Refere-se ao acesso à página de detalhes de um objeto (por exemplo, a ficha de uma publicação). Este evento pode ser registrado tanto no repositório quanto nos agregadores.</p>
  </div>
</div>

<div class="note-container">
  <div class="note-header">
    <h4>Download</h4>
  </div>
  <div class="note-content">
    <p>Corresponde à ação de acessar o arquivo anexo (como um PDF). Este evento ocorre exclusivamente no repositório.</p>
  </div>
</div>

<div class="note-container">
  <div class="note-header">
    <h4>Link Externo (Outlink)</h4>
  </div>
  <div class="note-content">
    <p>Esta métrica é registrada apenas nos agregadores (nacional ou regional) e mede quantas vezes um usuário clica no link que leva da ficha do objeto no agregador para a página do item no repositório original. Reflete o interesse em acessar a fonte primária a partir de um ambiente de busca mais amplo.</p>
  </div>
</div>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Conversão</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><strong>Nos repositórios:</strong> Uma conversão ocorre quando uma pessoa que visualiza a ficha de um objeto realiza um download do arquivo. Ou seja, quando uma visualização se converte em uma ação de download.</li>
      <li><strong>Nos agregadores:</strong> A conversão ocorre quando, após visualizar um objeto, a pessoa clica no link que redireciona para o repositório. Nesse caso, a conversão se concretiza através do evento de "Link Externo".</li>
    </ul>
  </div>
</div>

## Filtragem de Tráfego de Robôs

É importante mencionar que é realizada uma limpeza de tráfego automatizado (robôs) utilizando tanto listas padrão COUNTER quanto critérios baseados no comportamento, como por exemplo o número de ações por unidade de tempo. Isso significa que os eventos suspeitos de serem gerados por bots são descartados, o que pode fazer com que as métricas resultem comparativamente menores do que as observadas no próprio repositório.

No entanto, como aplicamos o mesmo método para todos os repositórios, essa limpeza proporciona uma camada de normalização que melhora a comparabilidade entre instituições e plataformas.