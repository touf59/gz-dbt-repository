SELECT *,
ROUND((operational_margin-ads_cost),2) AS ads_margin
FROM {{ref("int_campaigns_day")}} AS c
INNER JOIN {{ref("finance_days")}} AS f
ON c.date_date = f.date_date
Order By c.date_date desc