# LAST_VALUE
select
  customer_id,
  created_at,
  last_value(created_at) over(partition by customer_id order by created_at 
  		ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as ultima_compra
from e_commerce.orders
where status = 'entregue'
order by 1,2