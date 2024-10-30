select 
date_date,
ROUND(SUM(CAST(ads_cost AS FLOAT64))) AS ads_cost, 
ROUND(SUM(impression),2) AS ads_impression,
ROUND(SUM(click),2) AS ads_clicks,  
FROM {{ref("int_campaigns")}}
Group By date_date 
order by date_date desc