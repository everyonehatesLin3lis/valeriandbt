SELECT _airbyte_data ->> 'id' AS id, 
    _airbyte_data ->> 'currency' AS currency,
    _airbyte_data ->> 'refunds' AS refunds,
    _airbyte_data -> 'customer' ->> 'id' as customer_id
FROM test._airbyte_raw_orders