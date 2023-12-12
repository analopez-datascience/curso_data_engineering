WITH stg_sql_server_dbo__users AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_dbo__users') }}
    ),

renamed_casted AS (
    SELECT
        user_id
        , CONCAT(first_name, ' ', last_name) as full_name
        , email
        , phone_number
        , created_at
        , updated_at
        , address_id
        , date_load_utc
    FROM stg_sql_server_dbo__users
    )

SELECT * FROM renamed_casted