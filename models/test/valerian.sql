/*SELECT JSON_QUERY(_airbyte_data, '$.id') AS id,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.currency') AS currency,
       JSON_EXTRACT_SCALAR(_airbyte_data, '$.processed_at') AS processed_at,
       JSON_EXTRACT_ARRAY(_airbyte_data, '$.refunds') as refunds
FROM `Linas_DBT_test._airbyte_raw_orders`*/

SELECT  JSON_EXTRACT_SCALAR(o._airbyte_data, '$.id') AS order_id
       ,CAST(JSON_EXTRACT_SCALAR(o._airbyte_data, '$.total_price_set.shop_money.amount') AS DECIMAL) AS amount_shop_curr
       ,JSON_EXTRACT_SCALAR(o._airbyte_data, '$.refunds[0].id') AS refund_id
       ,JSON_EXTRACT_SCALAR(o._airbyte_data, '$.refunds[0].transactions[0].processed_at') AS refund_date
       ,JSON_EXTRACT_SCALAR(o._airbyte_data, '$.refunds[0].transactions[0].amount') AS refund_amt -- In the customer currency
FROM   `Linas_DBT_test._airbyte_raw_orders` o