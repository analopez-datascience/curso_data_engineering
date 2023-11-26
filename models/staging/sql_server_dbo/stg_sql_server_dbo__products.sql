with 

source as (

    select * from {{ source('sql_server_dbo', 'products') }}

),

renamed as (

    select
        product_id,
        cast (price as float) as price,
        name as name_product,
        inventory,
        cast (_fivetran_synced as timestamp_ntz(9)) as date_load_utc

    from source

)

select * from renamed
