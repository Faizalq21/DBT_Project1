{{ config(
    materialized='view',
    schema='STAGING',
    post_hook="{{ log_model_run() }}"
) }}

select
  customer_id,
  name,
  segment
  country
from {{ ref('bronze_customers') }}
