---
layout: post

title:  "¿Qué son las estadísticas de uso?"
date:   2024-01-30 14:53:14 +0200
description: "¿Qué son las estadístcas de uso?"

language: es
language_reference: usage-stats-post

categories: post

published: true
---
¿Qué son las estadísticas de uso?
En esencia, se trata del procesamiento de la informacioón proveniente e la interacción de los usuarios en los distintos portales de búsqueda de documentos cientificos, tanto a nivel de repositorio, a nivel de Nodo nacional y en el sitio web de LA Referencia.
Nuestro flujo consta de tres etapas:

- **Recolecion de la información.**
- **Procesamiento.**
- **Construcción de visualizaciones estadísticas.**

<br>


![]({{"/assets/img/usage-stats-flow.png" | absolute_url }} )


<!--more-->

<br>

## **Recolección de la información**

En esta etapa recolectamos los datos utilizando DSpace stats collector, Vufind y Vufind con Matomo. esta recolección de datos se realiza a nivel de repositorio, Nodo nacional y en LA Referencia. Esta información "en crudo" necesita pasar por un proceso de filtrado y normalización.
[Meter imagen aca quizas?]

<br>

## **Procesamiento de datos**

Almacenamos losdatos en Amazon S3 en formato parquet con particiones, para poder consultarlos de forma granular y eficiente.
Dichos datos son filtrados y normalizados por una arquitectura "pipeline" para eliminar datos redundantes y datos provenientes de eventos producidos por robots. ([Ver más sobre el procesamiento de datos]({% link _posts/es/2023-06-30-arquitectura-pipeline.md %}))

<br>

## **Construccion de visualizaciones de estadísticas**

Finalmente, construimos componentes gráficos incrustables para reflejar los datos recolectados y procesados. Dichas estadísticas de uso no son solo numeros en pantalla; son una ventana que nos brinda prespectiva sobre como interactuan los usarios con el contenido de los repositorios en todos los niveles. ([Ver más sobre los componentes gráficos]({% link _posts/es/2023-06-30-arquitectura-pipeline.md %}))

