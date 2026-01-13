# BigQuery Analytics Layer

<ESPAÑOL>

## Descripción
Esta carpeta contiene la implementación de capa analítica construida en Google BigQuery.
Es parte de una arquitectura de datos más amplia diseñada para respaldar la inteligencia de negocios, el análisis de datos y el modelado semántico.

BigQuery es usado como motor principal de OLAP/ Procesamiento analítico en línea, optimizado para consultas analíticas complejos y uso de inteligencia de negocios.

## Por qué BigQuery?
- Almacenamiento columnar optimizado para la analítica
- Integración nativa con herramientas de inteligencia de negocios (Looker Studio, Power BI, etc)
- Estándar compatible de lenguaje de consultas estructuradas (SQL)
- Escalamiento independiente de los sistemas transaccionales (OLTP)

## Contexto de la arquitectura
La plataforma de datos sigue una arquitectura moderna de analítica:

PostgrSQL (CLOUD SQL) → Origen transaccional (OLTP)
BigQuery → Capa analítica (OLAP)
LookML → Capa semántica y de métricas
Herramientas BI → Visualización y reportes

Esta separación asegura desempeño, escalabilidad y consistencia en las métricas.

<ENGLISH>

## Description
This folder contains the **analytics layer implementation** built on Google BigQuery.  
It is part of a broader data architecture designed to support **business intelligence, data analysis, and semantic modeling**.

BigQuery is used as the primary OLAP/Online Analytical Processing engine, optimized for complex analytical queries and BI consumption.

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
