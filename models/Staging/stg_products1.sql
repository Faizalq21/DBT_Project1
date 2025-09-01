{{ config(
    materialized='view',
    schema='STAGING',
    post_hook="{{ log_model_run() }}"
) }}

select
  product_id,
  product_name,
  category,
  subcategory
from {{ ref('bronze_products') }}
