WITH stg_sql_server_dbo__promos AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_dbo__promos') }}
    ),

renamed_casted AS (
    SELECT
        promotion_name,
        discount,
        status,
        date_load_utc
    FROM
        stg_sql_server_dbo__promos
)

SELECT * FROM renamed_casted