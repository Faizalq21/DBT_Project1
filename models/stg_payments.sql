WITH source AS (
    SELECT * 
    FROM {{ source('Source_Ecommerce', 'PAYMENTS') }}
)

SELECT 
    ID AS PAYMENT_ID,      -- ✅ This is the payment's primary key
    ORDER_ID,              -- ✅ This refers to the order being paid for
    AMOUNT,
    PAYMENT_METHOD,
    PAYMENT_DATE
FROM source
