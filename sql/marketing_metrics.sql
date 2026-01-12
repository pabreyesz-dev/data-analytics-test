/*
ANÁLITICA DE MARKETING
- Ganancias atribuido por campaña
- ROI Retorno de la inversión
*/

SELECT
    mc.campaign_name,
    mc.budget,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS revenue,
    ROUND(
        (SUM(oi.quantity * oi.unit_price) - mc.budget)
        / NULLIF(mc.budget, 0),
        2
    ) AS roi
FROM marketing_campaigns mc
JOIN order_campaigns oc ON oc.campaign_id = mc.campaign_id
JOIN orders o ON o.order_id = oc.order_id
JOIN order_items oi ON oi.order_id = o.order_id
GROUP BY mc.campaign_name, mc.budget
ORDER BY roi DESC;
