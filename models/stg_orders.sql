WITH source AS (
    SELECT * 
    FROM {{ source('Source_Ecommerce', 'ORDERS') }}
)
SELECT 
	ID as ORDER_ID,
	CUSTOMER_ID,
	STATUS,
	ORDER_DATE,
	TOTAL_AMOUNT,
	CREATED_AT,
	UPDATED_AT 
From source