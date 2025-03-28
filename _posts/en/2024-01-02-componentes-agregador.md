---

layout: post

title:  "03. LA Referencia Usage Statistics Infrastructure"  
date:   2024-07-30 14:53:14 +0200  
description: ""  
language: en  
language_reference: usage-stats-post

categories: post

published: true

---

<br/>

The LA Referencia statistics system operates on a shared infrastructure in Amazon AWS, maintained as part of the services provided by LA Referencia thanks to contributions from member countries and SCOSS support.

The infrastructure is based on a set of open components published on GitHub as part of the commitment to contribute to the Global Open Science Ecosystem.

<br/>

- **Database, management, and identifier normalization libraries components**
- **Storage and event preservation components**
- **Processing, cleaning, normalization, and event aggregation components**
- **Web services components for repositories and aggregators**

<br/>

By clicking here, you can access all the source code for the components  
<!--more-->

<br/>

## **Database, management, and identifier normalization libraries components**

<br/>

### Usage Statistics Service DB

<br/>

![]({{"/assets/img/database.png" | absolute_url }} )

<br/>

**Access to code and installation manuals**

[https://github.com/lareferencia/lareferencia-usage-stats-db](https://github.com/lareferencia/lareferencia-usage-stats-db)

<br/>

### Administration and Orchestration System

<br/>

![]({{"/assets/img/admin.png" | absolute_url }} )

<br/>

**Access to code and installation manuals**

[https://github.com/lareferencia/lareferencia-usage-stats-admin](https://github.com/lareferencia/lareferencia-usage-stats-admin)

<br/>

## **Storage and event preservation component**

### AWS S3 Storage and Matomo to S3

<br/>

![]({{"/assets/img/s3.png" | absolute_url }} )

<br/>

**Access to code and installation manuals**

[https://github.com/lareferencia/lareferencia-usage-stats-processor](https://github.com/lareferencia/lareferencia-usage-stats-processor)

<br/>

## **Processing, cleaning, normalization, and event aggregation component**

Processing software developed in Python, aimed at filtering and normalizing the information stored in S3 Parquet, which is later persisted in Elastic/OpenSearch indices.

<br/>

**Loading Parquet files from Amazon S3**  
This step loads Parquet files from a specific repository on a given date. During this process, user session data and associated events are extracted.

**Bot filtering**  
The purpose of this step is to improve the reliability of the statistical data. The filter allows the identification and removal of sessions and events generated by bots, ensuring that only authentic data is analyzed.

**Asset filtering**  
Similar to the previous step, this phase seeks to further enhance the quality of statistical data. Here, erroneous events like "thumbnail downloads" are detected and removed, when the statistics collector incorrectly registers a thumbnail view as a download.

**Metric calculation**  
In this step, visits, downloads, and links associated with a specific session and its identifier (identifier) are calculated. Additionally, a new metric called "conversions" is introduced, which is based on combinations of views with downloads or views with links.

**Data aggregation**  
This phase aggregates data by item (identifier), calculating views, downloads, links, and conversions of an item, regardless of the sessions that accessed it. These data are also aggregated by the country of origin of the event.

**Identifier normalization**  
The goal of this step is to homogenize and standardize the identifiers (identifiers) from repositories, improving data consistency.

**ElasticSearch/OpenSearch indexing**  
In this final step, the last adjustments in the data flow are made to ensure effective and efficient indexing in OpenSearch or ElasticSearch.

<br/>

![]({{"/assets/img/pipeline.png" | absolute_url }} )

<br/>

### S3 to Elastic/OpenSearch Pipeline

**Access to code and installation manuals**

[https://github.com/lareferencia/lareferencia-usage-stats-processor](https://github.com/lareferencia/lareferencia-usage-stats-processor)

<br/>

## **Web services components for repositories and aggregators**

<br/>

![]({{"/assets/img/webservices.png" | absolute_url }} )

<br/>

### Usage Statistics Web Services

**Access to code and installation manuals**

[https://github.com/lareferencia/lareferencia-usage-services](https://github.com/lareferencia/lareferencia-usage-stats-services)

<br/>

---