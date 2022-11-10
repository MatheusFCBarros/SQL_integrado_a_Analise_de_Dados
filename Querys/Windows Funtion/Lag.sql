# LAG ( Retorna a linha anterior em relacao ao agrupamento realizado)
# TIMESTAMP calcula a diferenca em dias entre as compras
# Na subquerie estou calculando os dias entre as compras e na querie principal estou agregando pela media entre os dias de cada usuario
select
  customer_id,
  round(avg(dias_desde_compra_anterior), 2) as tempo_medio_entre_uma_compra_e_outra
from(
  select
    customer_id,
    created_at,
    LAG(created_at) over(partition by customer_id order by created_at) as data_compra_anterior,
    TIMESTAMP_DIFF(created_at, LAG(created_at) over(partition by customer_id order by created_at), DAY) as dias_desde_compra_anterior 
  from e_commerce.orders
  where status = 'entregue'
  order by 1,2)
group by 1