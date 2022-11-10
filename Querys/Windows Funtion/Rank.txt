# RANK
select
  customer_id,
  created_at,
  RANK() over(partition by customer_id order by created_at asc) as rank
from e_commerce.orders
where status = 'entregue'
order by 1,2