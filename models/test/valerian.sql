SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.created_at') AS created_at
FROM `Linas_DBT_test._airbyte_raw_orders`