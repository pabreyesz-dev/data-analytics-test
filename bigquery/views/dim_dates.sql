-- Vista que genera una tabla de fechas con atributos adicionales como año, mes, día, año-mes y semana

CREATE OR REPLACE VIEW ecommerce_analytics.dim_dates AS
SELECT
  d AS date,
  EXTRACT(YEAR FROM d) AS year,
  EXTRACT(MONTH FROM d) AS month,
  EXTRACT(DAY FROM d) AS day,
  FORMAT_DATE('%Y-%m', d) AS year_month,
  EXTRACT(WEEK FROM d) AS week
FROM UNNEST(
  GENERATE_DATE_ARRAY('2022-01-01', '2026-12-31', INTERVAL 1 DAY)
) AS d;
