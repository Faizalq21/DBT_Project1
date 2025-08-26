
select  
    ORDER_ID, CUSTOMER_ID, AMOUNT_USD,
    {{ calculate_tax('AMOUNT_USD')}} AS Net_Total
From {{ source('source_payments', 'RAW_PAYMENTS') }}
