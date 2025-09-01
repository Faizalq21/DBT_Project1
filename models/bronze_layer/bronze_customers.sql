{{ config(
    materialized='view',
    schema='BRONZE',
    post_hook="{{ log_model_run() }}"
) }}

select * from {{ source('Source_raw', 'RAW_CUSTOMERS') }}
