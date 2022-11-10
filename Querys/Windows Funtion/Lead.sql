# LEAD (Retorna o valor da proxima linha de acordo com o agrupamento realizado)
select
  customer_id,
  created_at,
  lead(created_at) over(partition by customer_id order by created_at) as data_proxima_compra
from e_commerce.orders
where status = 'entregue'
order by 1,2
