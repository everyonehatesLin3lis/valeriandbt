SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_QUERY(_airbyte_data, '$.refunds.transactions.amount.receipt.amount') as refund_amount,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.refunds.transactions[0].status') as refund_status,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.refunds.transactions[0].created_at') as refund_created_at
FROM `Linas_DBT_test._airbyte_raw_orders`