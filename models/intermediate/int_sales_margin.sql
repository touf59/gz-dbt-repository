SELECT s.*,
    p.* EXCEPT (products_id),
    quantity*purchase_price AS purchase_cost,
    ROUND(revenue-(quantity*purchase_price),2) AS margin,
    ROUND({{ calculmargin('revenue','quantity*purchase_price') }},2) AS pourcentagemargin
FROM {{ref("stg_gz_raw_data__raw_gz_sales")}} AS s
LEFT JOIN {{ref("stg_gz_raw_data__raw_gz_product")}} AS p
ON s.products_id = p.products_id






