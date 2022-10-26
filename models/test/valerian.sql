SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.created_at') AS created_at,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.total_price') AS total_price
FROM `Linas_DBT_test._airbyte_raw_orders`