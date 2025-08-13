{{ config(materialized='view') }}

select trans_id,	
account_id,
`Date`
`Type`,
operation,
amount,
FROM DBT_PROJECT1.DBT_LANDING.TRANSACTIONS

