SELECT
     o.orders_id
     ,o.date_date
     ,ROUND(o.margin + s.shipping_fee - (s.logcost + s.ship_cost),2) AS operational_margin
     ,o.quantity
     ,o.revenue
     ,o.purchase_cost
     ,o.margin
     ,s.shipping_fee
     ,s.logcost
     ,s.ship_cost
FROM {{ref("int_orders_margin")}} AS o
LEFT JOIN {{ref("stg_gz_raw_data__raw_gz_ship")}} AS s
ON o.orders_id = s.orders_id