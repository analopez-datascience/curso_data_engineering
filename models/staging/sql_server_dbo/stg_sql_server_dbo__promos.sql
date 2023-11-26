with 

source as (

    select * from {{ source('sql_server_dbo', 'promos') }}

),

renamed as (

    select
        promo_id as promotion_name,
        discount,
        status,
        cast (_fivetran_synced as timestamp_ntz(9)) as date_load_utc

    from source

)

select * from renamed
