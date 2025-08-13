WITH ORDERS AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
PAYMENTS AS (
    SELECT * FROM {{ ref('stg_payments') }}
)

SELECT
    O.ORDER_ID,
    O.CUSTOMER_ID,
    O.STATUS,
    O.ORDER_DATE,
    P.AMOUNT,
    P.PAYMENT_METHOD
FROM ORDERS O
LEFT JOIN PAYMENTS P
    ON O.ORDER_ID = P.ORDER_ID

