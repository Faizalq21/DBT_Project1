{{ config(
    materialized='table',
    schema='MARTS',
    post_hook="{{ log_model_run() }}"
) }}

select
  o.order_id,
  o.customer_id,
  o.order_date
from {{ ref('stg_orders1') }} o
left join {{ ref('stg_payments1') }} p using (order_id)
where p.order_id is null or p.status != 'Success'
