{{ config(
    materialized='view',
    schema='STAGING',
    post_hook="{{ log_model_run() }}"
) }}

select
  order_id,
  customer_id,
  product_id,
  order_date,
  quantity
from {{ ref('bronze_orders') }}
