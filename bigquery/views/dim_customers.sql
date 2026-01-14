--Vista que combina datos de clientes con segmentos de clientes y regiones para proporcionar una vista completa de la información del cliente

CREATE OR REPLACE VIEW ecommerce_analytics.dim_customers AS
SELECT
  c.customer_id,
  c.full_name,
  c.email,
  c.signup_date,
  c.is_active,
  cs.segment_name,
  r.country,
  r.city
FROM `cloudsql.ecommerce_analytics.customers` c
LEFT JOIN `cloudsql.ecommerce_analytics.customer_segments` cs
  ON c.customer_segment_id = cs.customer_segment_id
LEFT JOIN `cloudsql.ecommerce_analytics.regions` r
  ON c.region_id = r.region_id;
