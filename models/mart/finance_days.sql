select
    date_date,
    COUNT (orders_id) AS nb_transactions,
    ROUND(SUM(revenue),2) AS revenue,
    ROUND(AVG(revenue),1) AS average_basket,
    ROUND(SUM(operational_margin),2) AS operational_margin,
    ROUND(SUM(purchase_cost),2) AS total_purchase_cost,
    ROUND(SUM(shipping_fee),2) AS total_shipping_fee,
    ROUND(SUM(logcost),2) AS total_logcost,
    ROUND(SUM(quantity),2) AS total_quantity,
FROM {{ref("int_orders_operational")}} 
GROUP BY date_date