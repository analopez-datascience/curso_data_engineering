with 

source as (

    select * from {{ source('sql_server_dbo', 'users') }}

),

renamed as (

    select
        user_id,
        updated_at,
        address_id,
        last_name,
        created_at,
        cast(regexp_replace(phone_number, '-', '') as number) as phone_number,
        first_name,
        email,
        cast (_fivetran_synced as timestamp_ntz(9)) as date_load_utc

    from source

)

select * from renamed
