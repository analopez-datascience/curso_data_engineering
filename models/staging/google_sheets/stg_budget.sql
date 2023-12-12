with 

source as (

    select * from {{ source('google_sheets', 'budget') }}

),

renamed as (

    select
        _row,
        quantity::number(38,0) as quantity,
        month::timestamp_ntz as month,
        product_id::Varchar(50) as product_id,
        _fivetran_synced as date_load

    from source

)

select * from renamed
