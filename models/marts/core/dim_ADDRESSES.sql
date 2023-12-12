WITH stg_sql_server_dbo__addresses AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_dbo__addresses') }}
    ),

renamed_casted AS (
    SELECT
        address_id
        , zipcode
        , country
        , state
        , date_load
    FROM 
        stg_sql_server_dbo__addresses
 )

SELECT * FROM renamed_casted