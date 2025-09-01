{% snapshot snapshot_customers %}
{{
  config(
    target_schema='SNAPSHOTS',
    unique_key='customer_id',
    strategy='check',
    check_cols=['email', 'phone']
  )
}}

-- Use RAW source for SCD-style history
select *
from {{ source('Source_raw', 'RAW_CUSTOMERS') }}

{% endsnapshot %}
