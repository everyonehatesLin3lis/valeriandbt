WITH Refunds AS (
    SELECT JSON_QUERY(_airbyte_data, '$.refunds') AS refunds,
        
    FROM
        `Linas_DBT_test._airbyte_raw_orders`
)

SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_EXTRACT_SCALAR(r, '$.transactions[0].id') refund_id
FROM `Linas_DBT_test._airbyte_raw_orders`
LEFT JOIN Refunds r

