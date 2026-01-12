/*
PERFORMANCE DE PRODUCTOS
- Unidades vendidas
- Ganancias por categoría
- Ganancia por producto
*/

SELECT
    p.product_name,
    pc.category_name,
    SUM(oi.quantity) AS units_sold,
    SUM(oi.quantity * oi.unit_price) AS revenue,
    SUM(oi.quantity * (oi.unit_price - p.cost)) AS profit
FROM products p
JOIN product_categories pc ON pc.category_id = p.category_id
JOIN order_items oi ON oi.product_id = p.product_id
JOIN orders o ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name, pc.category_name
ORDER BY revenue DESC;
