with joined as (
    select 
        c.CUSTOMER_ID,
        o.ORDER_ID,
        o.CREATED_AT AS ORDER_DATE
    from {{ ref('stg_customers') }} c
    join {{ ref('stg_orders') }} o on c.customer_id = o.customer_id
)
select *,
{{ dbt_utils.generate_surrogate_key(['customer_id','order_id']) }} as surrogate_id
from joined