WITH source AS (
    SELECT * 
    FROM {{ source('Source_Ecommerce', 'PRODUCTS') }}
)
SELECT 
	ID AS PRODUCT_ID,
	NAME,
	CATEGORY,
	PRICE
FROM source

