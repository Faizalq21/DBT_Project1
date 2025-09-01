{{ config(
    materialized='table',
    schema='MARTS',
    post_hook="{{ log_model_run() }}"
) }}

select
  customer_id,
  sum(profit) as total_profit
from {{ ref('int_profit_calculation') }}
group by customer_id
