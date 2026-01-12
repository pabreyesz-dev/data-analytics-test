/*
METRICAS DE CLIENTE:
- Total de órdenes por cliente
- Revenue total (CLV simplificado)
- Ticket promedio
*/

WITH customer_revenue AS (
    SELECT
        c.customer_id,
        c.full_name,
        COUNT(DISTINCT o.order_id) AS total_orders,
        SUM(oi.quantity * oi.unit_price) AS lifetime_revenue
    FROM customers c
    JOIN orders o ON o.customer_id = c.customer_id
    JOIN order_items oi ON oi.order_id = o.order_id
    WHERE o.order_status = 'Completed'
    GROUP BY c.customer_id, c.full_name
)

SELECT
    customer_id,
    full_name,
    total_orders,
    lifetime_revenue,
    ROUND(
        lifetime_revenue / NULLIF(total_orders, 0),
        2
    ) AS avg_order_value
FROM customer_revenue
ORDER BY lifetime_revenue DESC;
