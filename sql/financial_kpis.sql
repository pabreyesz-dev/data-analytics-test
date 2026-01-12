/*
Calcula revenue, costo, margen y crecimiento mensual.
Se utiliza un CTE/COMMON TABLE EXPRESSION para agregar métricas a nivel orden
antes de agregarlas por mes.
*/

WITH order_revenue AS (
    SELECT
        o.order_id,
        DATE_TRUNC('month', o.order_date) AS order_month,
        SUM(oi.quantity * oi.unit_price) AS revenue,
        SUM(oi.quantity * p.cost) AS cost
    FROM orders o
    JOIN order_items oi ON oi.order_id = o.order_id
    JOIN products p ON p.product_id = oi.product_id
    WHERE o.order_status = 'Completed'
    GROUP BY o.order_id, order_month
)

SELECT
    order_month,
    SUM(revenue) AS total_revenue,
    SUM(revenue - cost) AS gross_profit,
    ROUND(
        (SUM(revenue - cost) / NULLIF(SUM(revenue), 0)) * 100,
        2
    ) AS gross_margin_pct
FROM order_revenue
GROUP BY order_month
ORDER BY order_month;
