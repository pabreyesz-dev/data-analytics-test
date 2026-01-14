# Analytics Views (Star Schema)

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
