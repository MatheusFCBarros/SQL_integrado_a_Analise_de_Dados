# FUNÇÕES DE AGREGAÇÃO
select
  customer_id,
  created_at,
  min(created_at) over(partition by customer_id) as primeira_compra,
  max(created_at) over(partition by customer_id) as ultima_compra,
  count(created_at) over(partition by customer_id) as numero_compras
from e_commerce.orders
where status = 'entregue'
order by 1,2