# BigQuery Analytics Layer

<ESPAÑOL>



<ENGLISH>

## Description
This folder contains the **analytics layer implementation** built on Google BigQuery.  
It is part of a broader data architecture designed to support **business intelligence, data analysis, and semantic modeling**.

BigQuery is used as the primary OLAP engine, optimized for complex analytical queries and BI consumption.

---

## Why BigQuery?
- Columnar storage optimized for analytics
- Native integration with BI tools (Looker Studio)
- SQL-standard compatible
- Scales independently from transactional systems

---

## Architecture Context
The overall data platform follows a modern analytics architecture:

- **PostgreSQL (Cloud SQL)** → Transactional source (OLTP)
- **BigQuery** → Analytics layer (OLAP)
- **LookML** → Semantic and metric layer
- **BI Tools** → Visualization and reporting

This separation ensures performance, scalability, and metric consistency.

---

## Contents
