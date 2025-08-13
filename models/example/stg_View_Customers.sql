{{ config(materialized='view') }}
SELECT 
ID AS CUSTOMER_ID,
UPPER(EMAIL) AS EMAIL,
CREATED_AT
FROM {{ source('Source_Ecommerce', 'CUSTOMERS') }}