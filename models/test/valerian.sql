SELECT JSON_QUERY(_airbyte_data, '$.total_price_usd') AS total_price_in_usd
FROM test._airbyte_raw_orders
