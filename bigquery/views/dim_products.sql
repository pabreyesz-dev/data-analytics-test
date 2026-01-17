-- Vista que combina datos de productos con categorías de productos para proporcionar detalles completos del producto

CREATE OR REPLACE VIEW ecommerce_analytics.dim_products AS
SELECT
  p.product_id,
  p.product_name,
  pc.category_name,
  p.price,
  p.cost
FROM `ecommerce_analytics.products` p
LEFT JOIN `ecommerce_analytics.product_categories` pc
  ON p.category_id = pc.category_id;
