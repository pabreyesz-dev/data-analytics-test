-- Vista que combina datos de órdenes, artículos de órdenes y productos para calcular ingresos brutos y margen bruto por artículo de orden

CREATE OR REPLACE VIEW ecommerce_analytics.fact_orders AS
SELECT
  o.order_id,
  o.order_date,
  o.customer_id,
  o.channel,
  o.order_status,

  oi.product_id,
  oi.quantity,
  oi.unit_price,

  (oi.quantity * oi.unit_price) AS gross_revenue,

  p.cost,
  (oi.quantity * (oi.unit_price - p.cost)) AS gross_margin

FROM `ecommerce_analytics.orders` o
JOIN `ecommerce_analytics.order_items` oi
  ON o.order_id = oi.order_id
JOIN `ecommerce_analytics.products` p
  ON oi.product_id = p.product_id;
