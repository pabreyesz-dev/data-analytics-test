# Analytics Views (Star Schema) Vistas analíticas esquema estrella

<ESPAÑOL>
Esta carpeta contiene las vistas de analítica construidas usando SQL estándar.

## Diseño
- Tabla de hechos: `fact_orders`
- Tablas de dimensiones:
  - `dim_customers`
  - `dim_productos`
  - `dim_dates`
  - `dim_regions`

## Compatibilidad en inteligencia de negocios
Estas vistas están diseñadas para ser consumidas por:
  - Looker / LookML
  - Looker Studio
  - Tableau
  - Power BI

## Beneficios
  - Definición única de ganancias y margen
  - Evitar duplicidad de métricas
  - Limpiar la granularidad y unir las rutas lógicas
  - Panel de reportes optimizado para su rendimiento
<ENGLISH>
This folder contains analytics-ready views built using standard SQL.

## Design
- Fact table: `fact_orders`
- Dimension tables:
  - `dim_customers`
  - `dim_products`
  - `dim_dates`
  - `dim_regions`

## BI Compatibility
These views are designed to be consumed by:
- Looker / LookML
- Looker Studio
- Tableau
- Power BI

## Benefits
- Single definition of revenue and margin
- Avoids metric duplication
- Clear grain and join paths
- Optimized for dashboard performance
