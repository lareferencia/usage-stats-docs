---
layout: post

title:  "Componentes de envío de eventos"
date:   2024-08-30 14:53:14 +0200
description: "Componentes de envío de eventos"

language: es
language_reference: sending-usage-stats

categories: post

published: true
---

Los eventos de uso ocurren en los repositorios y agregadores donde los resultados de investigación son visibilizados, por esa razón para poder preservarlos, procesarlos y generar servicios es necesario contar con componentes instalados en las fuentes que remitan periódicamente los eventos de uso. 

### DSpace Stats Collector 

DSpace es un software de repositorios ampliamente utilizado. Este componente python, que funciona en forma indendiente y segura, envía los eventos de uso almacenados en  DSpace (4,5,6,7) utilizando el protocolo de tracker Matomo.

![]({{"/assets/img/dcollector-diagram.png" | absolute_url }} )

Acceso al código y manuales de instalación

[https://github.com/lareferencia/dspace-stats-collector](https://github.com/lareferencia/dspace-stats-collector)
 

### Plugin Vufind Matomo

