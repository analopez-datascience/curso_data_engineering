with 

source as (

    select * from {{ source('src_sql_server_dbo', 'promos') }}

),

renamed as (

    select
        promo_id,
        discount,
        status,
        _fivetran_deleted,
        _fivetran_synced

    from source

)
