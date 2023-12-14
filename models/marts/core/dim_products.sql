

WITH stg_promos AS (
    SELECT *
    FROM ALUMNO22_DEV_SILVER_DB.sql_server_dbo.stg_products
),

stg_promos_casted AS (
    SELECT
        product_id,
        price,
        name,
        inventory,
        _fivetran_deleted,
        _fivetran_synced
    FROM stg_promos
)

SELECT * FROM stg_promos_casted