<ESPAÑOL>

BigQuery actúa como la fuente única de verdad para el análisis, mientras que PostgreSQL sigue siendo el sistema de registro de transacciones.

## Consumo
Este conjunto de datos está diseñado para ser utilizado por:
Looker / LookML - Capa semántica y métricas gobernadas
Looker Studio - Paneles visuales y reportes
Tableau - Conexiones en tiempo real o extracciones de información
Análisis SQL ad-hoc

## Principios del diseño
- Esquema estrella orientado a hechos y dimensiones
- Entradas y uniones en consultas explicitas para evitar duplicidad en métricas
- SQL escrito usando el estándar de sql, compatible entre las herramientas de inteligencia de negocios
- Vistas con prioridad sobre las tablas para lograr flexibilidad y gobernanza

## Compatibilidad con inteligencia de negocios
Los modelos SQL y vistas definidas en esta capa son compatibles con:
- Looker / LookML
- Looker Studio
- Tableau
- Herramientas basadas en análisis SQL

La definición de métricas está centralizada para evitar duplicidad y inconsistencias entre los paneles visuales.

## Conceptos clave demostrados
- Separación entre OLAP y OLTP
- Modelamiento de esquema estrella
- SQL avanzado para analíticas
- Diseño de datos compatible con herramientas de BI
- Documentación preparada para empresas


<ENGLISH>

BigQuery acts as the **single source of truth for analytics**, while PostgreSQL remains the system of record for transactions.

---

## Consumers
This dataset is designed to be consumed by:
- **Looker / LookML** (semantic layer and governed metrics)
- **Looker Studio** (dashboards and reports)
- **Tableau** (live or extract connections)
- **Ad-hoc SQL analysis**

---

## Design Principles
- Star-schema oriented (facts & dimensions)
- Explicit joins to avoid metric duplication
- SQL written using **standard SQL**, portable across BI tools
- Views prioritized over tables for flexibility and governance


---

## BI Compatibility
The SQL models and views defined in this layer are compatible with:
- Looker / LookML
- Looker Studio
- Tableau
- Any SQL-based analytics tool

Metric definitions are centralized to avoid duplication and inconsistencies across dashboards.

---

## Key Concepts Demonstrated
- OLTP vs OLAP separation
- Star schema modeling
- Advanced SQL for analytics
- BI-friendly data design
- Enterprise-ready documentation
