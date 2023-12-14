

with users as (
    select *
    from ALUMNO22_DEV_SILVER_DB.sql_server_dbo.stg_users
),

addresses as (
    select *
    from ALUMNO22_DEV_SILVER_DB.sql_server_dbo.stg_addresses
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