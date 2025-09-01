{{ config(
    materialized='table',
    schema='MARTS',
    post_hook="{{ log_model_run() }}"
) }}

select
  product_id,
  sum(profit) as total_profit,
  count(*)   as total_orders
from {{ ref('int_profit_calculation') }}
group by product_id

