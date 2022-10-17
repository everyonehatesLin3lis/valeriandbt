SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_QUERY(_airbyte_data, '$.transactions[0].id') AS refund_id,
       CAST(SUBSTR(JSON_EXTRACT_SCALAR(_airbyte_data, '$.transactions[0].processed_at'), 1, 10) AS DATE) refund_date
FROM `Linas_DBT_test._airbyte_raw_orders`
