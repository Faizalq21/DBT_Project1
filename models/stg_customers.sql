WITH source AS (
    SELECT * 
    FROM {{ source('Source_Ecommerce', 'CUSTOMERS') }}
)
SELECT 
	ID AS CUSTOMER_ID,
	NAME,
	EMAIL,
	REGION,
	CREATED_AT,
	UPDATED_AT
From source