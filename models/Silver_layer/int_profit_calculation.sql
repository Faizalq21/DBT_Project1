{{ config(
    materialized='table',
    schema='SILVER',
    post_hook="{{ log_model_run() }}"
) }}

select
  o.order_id,
  o.product_id,
  o.customer_id,
  p.price,
  p.cost,
  {{ calculate_profit('p.price', 'p.cost') }} as profit
from {{ ref('stg_orders') }}   o
join {{ ref('stg_products') }} p using (product_id)
