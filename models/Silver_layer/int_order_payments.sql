{{ config(
    materialized='table',
    schema='SILVER',
    post_hook="{{ log_model_run() }}"
) }}

select
  o.order_id,
  o.customer_id,
  o.order_date,
  p.amount,
  p.payment_status
from {{ ref('stg_orders') }}   o
left join {{ ref('stg_payments') }} p using (order_id)
