-- Vista que proporciona información sobre regiones, incluyendo ID de región, país y ciudad

CREATE OR REPLACE VIEW ecommerce_analytics.dim_regions AS
SELECT
  region_id,
  country,
  city
FROM `cloudsql.ecommerce_analytics.regions`;
