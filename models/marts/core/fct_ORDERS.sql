WITH stg_sql_server_dbo__orders AS (
    SELECT * 
    FROM ALUMNO22_DEV_SILVER_DB.sql_server_dbo.stg_sql_server_dbo__orders
),


renamed_casted AS (
    SELECT
        order_id 
        , user_id 
        , promo_id
        , address_id
        , created_at
        , shipping_cost
        , order_cost
        , service
        , estimated_delivery_at
        , delivered_at
		, DATEDIFF(day, created_at, delivered_at) AS days_to_deliver        
        , status
    FROM stg_sql_server_dbo__orders
    )

SELECT * FROM renamed_casted
        



