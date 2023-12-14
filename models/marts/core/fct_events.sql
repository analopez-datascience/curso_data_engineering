

WITH stg_events AS (
    SELECT * 
    FROM ALUMNO22_DEV_SILVER_DB.sql_server_dbo.stg_events
),


stg_events_casted AS (
     SELECT
        event_id
        ,page_url
        ,event_type
        ,user_id
        ,product_id
        ,session_id
        ,created_at
        ,order_id
        ,_fivetran_deleted
        ,_fivetran_synced
    FROM stg_events
    )

SELECT * FROM stg_events_casted