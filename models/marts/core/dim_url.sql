WITH stg_sql_server_dbo__events AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_dbo__events') }}
    ),

renamed_casted AS (
    SELECT
        event_id ,
        event_type,
        page_url,
        user_id  
    FROM 
        source
 )

SELECT * FROM renamed_casted