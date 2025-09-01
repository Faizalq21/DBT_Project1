{{ config(
    materialized='table',
    schema='MARTS',
    post_hook="{{ log_model_run() }}"
) }}

select
  c.country_name,
  c.region,
  sum(p.profit) as total_profit
from {{ ref('int_profit_calculation') }} p
join {{ ref('stg_customers1') }} cu on p.customer_id = cu.customer_id
join {{ ref('stg_country1') }}   c  on cu.country_code = c.country_code
group by c.country_name, c.region
