{{
    config(
        materialized='table'
    )
}}

with users as (
    select *
    from {{ ref('stg_users') }}
),

addresses as (
    select *
    from {{ ref('stg_addresses') }}
)

select
    u.first_name,
    u.last_name,
    u.phone_number,
    u.address_id,
    ad.address,
    ad.state,
    ad.country,
    ad.zipcode
from users u   
left join addresses ad
    on u.address_id = ad.address_id