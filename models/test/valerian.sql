SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_QUERY(_airbyte_data, '$.refunds[0].transactions[0].id') AS refund_id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.shop_money.currency_code') AS shop_curr,
       JSON_EXTRACT_SCALAR(r, '$.transactions[0].currency') refund_curr
FROM `Linas_DBT_test._airbyte_raw_orders`
