SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_QUERY(_airbyte_data, '$.refunds') as refunds,
       JSON_EXTRACT_ARRAY(_airbyte_data, '$.refunds') as refundss
FROM `Linas_DBT_test._airbyte_raw_orders`