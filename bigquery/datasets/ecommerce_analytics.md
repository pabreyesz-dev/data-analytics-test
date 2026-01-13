# BigQuery Dataset: ecommerce_analytics

<ESPAÑOL>

## Descripción general
Este conjunto de datos representa la capa analítica de la plataforma de e-commerce
Está diseñado para soportar e integrar inteligencia de negocios, analítica avanzada con SQL y modelado semántico usando
herramientas como Looker, Looker Studio y Tableau.

Los datos de transacciones tienen su origen desde una base de datos PostgreSQL (Cloud SQL) y es transformada en estructuras de analítica optimizadas
para reportes y análisis de KPI/Métricas.

## Propósito
- Separar las cargas de trabajo transaccionales (OLTP) de las cargas de trabajo analíticas (OLAP)
- Proveer de una base de crecimiento escalable para:
  - Reportes ejecutivos
  - Analítica de productos y clientes
  - Análisis de ganancias y rentabilidad
- Habilitar definiciones de métricas consistentes en todas las herramientas de inteligencia de negocios

## Locación de la data
- La misma región que la instancia de Cloud SQL
- Esto asegura:
  - Baja latencia
  - Eficiencia en los costos
  - Cumplimiento con las mejores prácticas en ubicación de la información


<ENGLISH>

## Overview
This dataset represents the **analytics (OLAP) layer** of the e-commerce platform.  
It is designed to support **business intelligence, advanced SQL analytics, and semantic modeling** using tools such as Looker, Looker Studio, and Tableau.

Transactional data originates from a PostgreSQL database (Cloud SQL) and is transformed into analytics-ready structures optimized for reporting and KPI analysis.

---

## Purpose
- Separate **transactional workloads (OLTP)** from **analytical workloads (OLAP)**
- Provide a scalable foundation for:
  - Executive dashboards
  - Product and customer analytics
  - Revenue and profitability analysis
- Enable consistent metric definitions across BI tools

---

## Data Location
- **Region**: Same region as Cloud SQL instance  
- This ensures:
  - Low latency
  - Cost efficiency
  - Compliance with data locality best practices

---

## Dataset Role in the Architecture
