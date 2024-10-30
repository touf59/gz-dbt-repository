SELECT 
    EXTRACT(MONTH FROM date_date) AS Mois,
    EXTRACT(YEAR FROM date_date) AS Annee,
    SUM(ads_cost) AS ads_cost,
    SUM(ads_impression) AS ads_impression,
    ROUND(SUM(ads_margin),2) AS ads_margin,
FROM 
    {{ ref("finance_campaigns_day") }}
GROUP BY Annee, Mois
