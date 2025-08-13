SELECT 
    trans_id,
    account_id,
    `Date`,         -- Assuming 'Date' is a reserved keyword in Snowflake
    `Type`,         -- Same here
    operation,
    amount
FROM 
    {{ source('source_transactions', 'TRANSACTIONS') }}