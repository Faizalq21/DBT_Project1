{{ config(materialized='table',
          tags=['customer', 'lifetime_value', 'finance']) }}
SELECT
    c.ID AS CUSTOMER_ID,
    SUM(e.order_amount) AS lifetime_value,
    COUNT(e.order_id) AS total_orders
FROM {{ ref('stg_customers') }} c
JOIN {{ ref('int_completed_orders') }} e 
    ON c.customer_id = e.customer_id
GROUP BY c.customer_id