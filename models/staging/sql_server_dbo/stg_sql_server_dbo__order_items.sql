with 

source as (

    select * from {{ source('sql_server_dbo', 'order_items') }}

),

renamed as (

    select
        order_id,
        product_id,
        quantity,
        cast (_fivetran_synced as timestamp_ntz(9)) as date_load_utc
    from source

)

select * from renamed
