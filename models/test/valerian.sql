SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.refunds[0].transactions[0].id') AS refund_id
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.shop_money.currency_code') AS shop_curr
       , (
          CAST(JSON_EXTRACT_SCALAR(_airbyte_data, '$.transactions[0].receipt.amount') AS DECIMAL)
          *
          CAST(JSON_EXTRACT_SCALAR(_airbyte_data, '$.transactions[0].receipt.balance_transaction.exchange_rate') AS DECIMAL)
          / 100
          ) refund_amt_shop_curr
FROM `Linas_DBT_test._airbyte_raw_orders`
