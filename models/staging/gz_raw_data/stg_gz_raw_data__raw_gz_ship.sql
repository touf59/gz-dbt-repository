with 

source as (

    select * from {{ source('raw', 'raw_gz_ship') }}

),

renamed as (

    select
        orders_id,
        CAST (shipping_fee AS FLOAT64) AS shipping_fee,
        logcost,
        CAST (ship_cost AS FLOAT64) AS ship_cost

    from source

)

select * from renamed
