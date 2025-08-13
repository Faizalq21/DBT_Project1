{{ config(materialized='view') }}
SELECT ID AS ORDER_ID,
CUSTOMER_ID,
STATUS,
TOTAL_AMOUNT,
CREATED_AT
FROM {{ source('Source_Ecommerce', 'ORDERS') }}