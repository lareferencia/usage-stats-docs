---

layout: post

title:  "Event Sending Components"  
date:   2024-08-30 14:53:14 +0200  
description: "Event Sending Components"

language: en  
language_reference: sending-usage-stats

categories: post

published: true

---

Usage events occur in repositories and aggregators where research outputs are made visible. Therefore, in order to preserve, process, and generate services from these events, it is necessary to have components installed at the sources to periodically transmit the usage events.

<br/>

### **DSpace Stats Collector**

DSpace is widely used repository software. This Python component, which operates independently and securely, sends the usage events stored in DSpace (versions 4, 5, 6, 7) using the Matomo tracker protocol.

![]({{"/assets/img/dcollector-pipeline.png" | absolute_url }} )

**Access to code and installation manuals**

[https://github.com/lareferencia/dspace-stats-collector](https://github.com/lareferencia/dspace-stats-collector)

<br/>

### **Vufind Aggregators**

For aggregators using Vufind software [https://vufind.org](https://vufind.org), there is a plugin that sends events in real-time using the Matomo tracker protocol.

**Access to code and installation manuals**

[https://vufind.org/wiki/configuration:usage_stats](https://vufind.org/wiki/configuration:usage_stats)

<br/>

### **Eprints Repositories**

For Eprints repositories, there is a plugin implemented by OpenAIRE that sends events using the Matomo tracker protocol.

**Access to code and installation manuals**

[https://github.com/openaire/EPrints-OAPiwik](https://github.com/openaire/EPrints-OAPiwik)

<br/>

---
