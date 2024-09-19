---
layout: post

title:  "Componentes del agregación, procesamiento y almacenaniento"
date:   2024-07-30 14:53:14 +0200
description: ""
language: es
language_reference: usage-stats-post

categories: post

published: true
---
<!--more-->



## **Componentes de base de datos de fuentes, administración y librerías de normalización**

### Usage Statitics Service DB 
### Sistema de administración y orquestación 

En esta etapa recolectamos los datos utilizando DSpace stats collector, Vufind y Vufind con Matomo. esta recolección de datos se realiza a nivel de repositorio, Nodo nacional y en LA Referencia. Esta información "en crudo" necesita pasar por un proceso de filtrado y normalización.
<br>

## **Componente de preservación de eventos**

### AWS S3 Storage

### Matomo to S3 

<br>

## **Componente de procesamiento, limpieza, normalización y agregación de eventos** 

### S3 to Elastic/OpenSearch Pipeline

En esta etapa recolectamos los datos utilizando DSpace stats collector, Vufind y Vufind con Matomo. esta recolección de datos se realiza a nivel de repositorio, Nodo nacional y en LA Referencia. Esta información "en crudo" necesita pasar por un proceso de filtrado y normalización.
<br>

## **Componente de servicios web para repositorios y agregadores**

### Usage Statitics Web Services

En esta etapa recolectamos los datos utilizando DSpace stats collector, Vufind y Vufind con Matomo. esta recolección de datos se realiza a nivel de repositorio, Nodo nacional y en LA Referencia. Esta información "en crudo" necesita pasar por un proceso de filtrado y normalización.
<br>


Arquitectura desarrollada en Python con el objetivo de filtrar y normalizar la información recolectada en la etapa anterior (Etapa de recolección de datos).

<br/>

<div class="flex" style="gap: 2rem">
    <div>
        <img style="width: 100vw" src="{{ site.baseurl}}/assets/img/pipeline.png"/>
    </div>
    <div>
        <h3 class="active">
            ¿Qué es la arquitectura pipeline?
        </h3>
        <p>
            Esta arquitectura representa una tuberia por donde la informacion fluye para obtener un producto final filtrado y pulido. Consta de una serie de etapas definidas con un objetivo unico y particular.
        </p>
        <span style="font-weight: bold">Información relevante</span>
        <ul>
          <li>Tecnologias utilizadas</li>
          <ul>
            <li>Python</li>
            <li>Pandas</li>
            <li>AWS (S3)</li>
          </ul>
          <li>Código fuente y documentación</li>
          <ul>
            <li>
              <a href="www.github.com/jon-doe">
                www.github.com/jon-doe
              </a>
            </li>
          </ul>
        </ul>
    </div>
</div>

<div class="post-item"></div>

<h3 class="active">
    Input stage
</h3>
Carga de archivos parquet de Amazon S3. Esta etapa permite cargar los archivos parquet de un repositorio especifico en una fecha especifica. Se obtienen los datos de sesión del usuario y los eventos asociados a esa sesión.

<br/>

<h3 class="active">
    Filtro de robots
</h3>
El objetivo de esta etapa es mejorar la fiabilidad de los datos estadísticos, para ello, el filtro permite detectar y eliminar datos de sesiones y/o eventos producidos por robots.

<br/>

<h3 class="active">
    Filtro de assets
</h3>
Al igual que la estapa anterior, el objetivo es seguir mejorando la fiabilidad de los datos estadísticos, para ello, este filtro detecta y elimina eventos producidos de manera erronea, por ejemplo "descargas" de thumbnails, es decir cuando el encargado de recolectar las estadisticas deteca la acción de "ver" un thumbnail como una descarga.

<br/>

<h3 class="active">
    Cálculo de métricas
</h3>
El objetivo de esta estapa son, por un lado calular la suma de visitas, descargas y enlaces para una sesión asociada a un identifier, y por el otro calcular una nueva métrica llamada conversiones, basada en vistas y descargas o vistas y enlaces. 

<br/>

<h3 class="active">
    Agregación de datos
</h3>
Esta estapa se encarga de realizar, por un lado la agregacion por item, es decir calcular vistas, descargas, enlaces y conversiones del item (identifier) independienteme de las sesiones que lo hayan consultado, por otro lado, en esta estapa se calculan las vistas, descargas, enlaces y conversiones de un item segmentada por el pasi de origen del evento. 

<br/>

<h3 class="active"> 
    Normalización de identifiers
</h3>
El objetivo de esta etapa es modificar o normalizar los identifiers provenientes de los repositorios para obtener una homogeneidad y estandarización. de los datos.


<br/>

<h3 class="active">
    Output stage
</h3>
Esta etapa final se encarga de hacer las ultimas modificaciones en el flujo de datos para lograr indexar de forma eficas y eficiente los datos en Open Search (Elastic Search.)


<br/>