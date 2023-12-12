{{ config(materialized="view") }}

with
    src_orders as (select * from {{ source("sql_server_dbo", "orders") }}),

    orders_renamed as (

        select
            order_id,
            address_id,
            case 
                when shipping_service = '' then 'Waiting'
                else (shipping_service)
                end as service,
            shipping_cost,
            created_at,
            case 
                when promo_id = '' then null
                else md5 (replace ( promo_id, ' ' ,''))
                end as id_promo ,
            promo_id,
            estimated_delivery_at,
            order_cost,
            user_id,
            order_total,
            delivered_at,
            case 
                when tracking_id = '' then null
                else md5 (replace ( tracking_id, ' ' ,''))
                end as tracking_id,
            md5 (status) as estado_id,
            status

        from src_orders
 

    )



select *
from orders_renamed
