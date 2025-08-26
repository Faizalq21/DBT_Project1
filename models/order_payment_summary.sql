select
    ORDER_ID,
    {{ generate_payment_amt_col('PAYMENT_METHOD
    ', 'AMOUNT_USD')}}
from {{ source('source_payments', 'RAW_PAYMENTS') }}
group by 1