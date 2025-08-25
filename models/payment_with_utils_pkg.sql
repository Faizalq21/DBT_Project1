select
  {{ dbt_utils.star(
      from=ref('Payments'),
      except=['PAYMENT_METHOD'],
      relation_alias='o'
  )}}
from {{ ref('Payments') }} as o