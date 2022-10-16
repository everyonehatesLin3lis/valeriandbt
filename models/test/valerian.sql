SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_QUERY(_airbyte_data, '$.currency') AS currency,
       JSON_QUERY(_airbyte_data, '$.processed_at') AS processed_at,
FROM `Linas_DBT_test._airbyte_raw_orders`.
