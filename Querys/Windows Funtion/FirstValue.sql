# FIRST_VALUE
select
  customer_id,
  created_at,
  first_value(created_at) over(partition by customer_id order by created_at asc) as primeira_compra,
  timestamp_diff(created_at, first_value(created_at) over(partition by customer_id order by created_at asc), day) as dias_desde_primeira_compra
from e_commerce.orders
where status = 'entregue'
order by 1,2