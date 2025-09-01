{{ config(
    materialized='view',
    schema='STAGING',
    post_hook="{{ log_model_run() }}"
) }}

select
  country_code,
  country_name,
  region
from {{ ref('country') }}
