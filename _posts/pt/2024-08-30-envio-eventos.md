---

layout: post

title: "Componentes de Envio de Eventos"  
date: 2024-08-30 14:53:14 +0200  
description: "Componentes de envio de eventos"

language: pt  
language_reference: sending-usage-stats

categories: post

published: true

---

Os eventos de uso ocorrem nos repositórios e agregadores onde os resultados de pesquisa são visibilizados. Por essa razão, para poder preservá-los, processá-los e gerar serviços, é necessário contar com componentes instalados nas fontes que enviem periodicamente os eventos de uso.

<br/>

### **DSpace Stats Collector** 

DSpace é um software de repositórios amplamente utilizado. Este componente em Python, que funciona de forma independente e segura, envia os eventos de uso armazenados no DSpace (4,5,6,7) utilizando o protocolo de rastreamento Matomo.

![]({{"/assets/img/dcollector-pipeline.png" | absolute_url }} )

**Acesso ao código e manuais de instalação**

[https://github.com/lareferencia/dspace-stats-collector](https://github.com/lareferencia/dspace-stats-collector)
  
<br/>

### **Agregadores Vufind**

Para os agregadores que utilizam o software Vufind [https://vufind.org](https://vufind.org), existe um plugin que envia os eventos em tempo real utilizando o protocolo de rastreamento Matomo.

**Acesso ao código e manuais de instalação**

[https://vufind.org/wiki/configuration:usage_stats](https://vufind.org/wiki/configuration:usage_stats)

<br/>

### **Repositórios Eprints** 

Para os repositórios Eprints, existe um plugin implementado pela OpenAIRE que envia os eventos utilizando o protocolo de rastreamento Matomo.

**Acesso ao código e manuais de instalação**

[https://github.com/openaire/EPrints-OAPiwik](https://github.com/openaire/EPrints-OAPiwik)

<br/>

---
