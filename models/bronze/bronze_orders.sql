{{ config(materialized='view') }}
select * from {{ source('source_transverse', 'orders') }}