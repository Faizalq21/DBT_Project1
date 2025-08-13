{{ config(materialized='ephemeral' ) }}
select
    order_id,
    to_date(created_at) as ORDER_DATE,
    CUSTOMER_ID,
    TOTAL_AMOUNT
from {{ ref('stg_View_Orders') }}
WHERE status = 'COMPLETED'
