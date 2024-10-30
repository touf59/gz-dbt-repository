SELECT c.date_date,
c.ads_cost,
c.ads_impression AS ads_impression,
c.ads_clicks AS ads_clicks,
f.nb_transactions AS nb_transactions,
f.revenue AS revenue,
f.average_basket AS average_basket,
f.total_purchase_cost AS purchase_cost,
f.total_shipping_fee AS shipping_fee,
f.total_logcost AS logcost,
f.total_quantity AS quantity,
ROUND((operational_margin-ads_cost),2) AS ads_margin
FROM {{ref("int_campaigns_day")}} AS c
INNER JOIN {{ref("finance_days")}} AS f
ON c.date_date = f.date_date
Order By c.date_date desc