/*
METRICAS OPERACIONALES:
- Tiempo promedio de despacho
- Performance logística mensual
*/

SELECT
    DATE_TRUNC('month', o.order_date) AS month,
    COUNT(DISTINCT o.order_id) AS total_orders,
    ROUND(
        AVG(s.delivered_date - s.shipped_date),
        2
    ) AS avg_delivery_days
FROM shipments s
JOIN orders o ON o.order_id = s.order_id
GROUP BY DATE_TRUNC('month', o.order_date)
ORDER BY month;
