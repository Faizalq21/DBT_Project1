-- models/stg_order_items.sql

WITH source AS (
    SELECT * 
    FROM {{ source('Source_Ecommerce', 'ORDER_ITEMS') }}
)
SELECT 
	ID AS ORDER_ITEM_ID,
	ORDER_ID,
	PRODUCT_ID,
	QUANTITY,
	UNIT_PRICE
FROM source
