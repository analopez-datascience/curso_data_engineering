SELECT *
FROM {{ ref('stg_sql_server_dbo__orders') }}
WHERE delivered_at < estimated_delivery_at

/*checks if there is any case where the delivery date is earlier than the date the order was placed, 
which would not make logical sense and would indicate some kind of problem with the data +/