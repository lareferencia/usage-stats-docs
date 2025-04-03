---

layout: post

title: "06. Comprensión de las Métricas de Uso"  
date: 2024-09-30 14:53:14 +0200  
description: "Explicación e interpretación de métricas clave"

language: es
language_reference: metricas-estadisticas

categories: post

published: true

---

<div class="post-component">
  <div class="post-component-content">
    <p class="lead-highlight">
      Las estadísticas que se presentan en el widget y en la plataforma de LA Referencia se construyen a partir de eventos que ocurren en tres niveles: repositorios institucionales, agregadores nacionales y el agregador regional.
    </p>
  </div>
</div>

## Métricas en Diferentes Niveles

Las estadísticas de uso presentadas en las herramientas de LA Referencia se construyen a partir de eventos que ocurren en tres niveles distintos:

1. **Repositorios institucionales** - Donde se aloja el contenido original
2. **Agregadores nacionales** - Que recolectan metadatos de los repositorios dentro de un país
3. **Agregador regional** - LA Referencia, donde se integran los registros de los distintos países de América Latina y también de España

## Comprensión de Cada Métrica

A continuación, explicamos el significado de cada una de las métricas, considerando las diferencias según el nivel en que se generan los eventos:

<div class="note-container">
  <div class="note-header">
    <h4>Visita</h4>
  </div>
  <div class="note-content">
    <p>Se refiere al acceso a la página de detalle de un objeto (por ejemplo, la ficha de una publicación). Este evento puede registrarse tanto en el repositorio como en los agregadores.</p>
  </div>
</div>

<div class="note-container">
  <div class="note-header">
    <h4>Descarga</h4>
  </div>
  <div class="note-content">
    <p>Corresponde a la acción de acceder al archivo adjunto (como un PDF). Este evento ocurre exclusivamente en el repositorio.</p>
  </div>
</div>

<div class="note-container">
  <div class="note-header">
    <h4>Enlace (Outlink)</h4>
  </div>
  <div class="note-content">
    <p>Esta métrica se registra únicamente en los agregadores (nacional o regional) y mide cuántas veces una persona usuaria hace clic en el enlace que lleva desde la ficha del objeto en el agregador hacia la página del ítem en el repositorio original. Refleja el interés en acceder a la fuente primaria desde un entorno de búsqueda más amplio.</p>
  </div>
</div>

<!--more-->

<div class="note-container">
  <div class="note-header">
    <h4>Conversión</h4>
  </div>
  <div class="note-content">
    <ul>
      <li><strong>En el repositorio:</strong> Una conversión ocurre cuando una persona que visualiza la ficha de un objeto realiza una descarga del archivo. Es decir, cuando una visualización se convierte en una acción de descarga.</li>
      <li><strong>En los agregadores:</strong> La conversión se produce cuando, tras visualizar un objeto, la persona hace clic en el enlace que redirige al repositorio. En este caso, la conversión se concreta a través del evento de "Enlace".</li>
    </ul>
  </div>
</div>

## Filtrado de Tráfico de Robots

Es importante mencionar que se realiza una limpieza de tráfico automatizado (robots) utilizando tanto listas estándar COUNTER como criterios basados en el comportamiento, como por ejemplo el número de acciones por unidad de tiempo. Esto significa que se descartan los eventos sospechosos de ser generados por bots, lo cual puede hacer que las métricas resulten comparativamente menores a las que se observan en el propio repositorio. 

Sin embargo, dado que aplicamos el mismo método para todos los repositorios, esta limpieza aporta una capa de normalización que mejora la comparabilidad entre instituciones y plataformas.