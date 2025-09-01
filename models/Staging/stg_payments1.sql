{{ config(
    materialized='view',
    schema='STAGING',
    post_hook="{{ log_model_run() }}"
) }}

select
  payment_id,
  order_id,
  payment_method,
  status,
  amount
from {{ ref('bronze_payments') }}
