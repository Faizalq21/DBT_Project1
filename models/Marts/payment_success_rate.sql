{{ config(
    materialized='table',
    schema='MARTS',
    post_hook="{{ log_model_run() }}"
) }}

select
  payment_status,
  count(*) as total_count,
  round(100.0 * count(*) / sum(count(*)) over (), 2) as percentage
from {{ ref('stg_payments1') }}
group by payment_status

