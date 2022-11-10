# ROW_NUMBER
select
  CATEGORY_ID,
  RANK() over(order by CATEGORY_ID asc) as rank,
  ROW_NUMBER() over(order by CATEGORY_ID asc) as numero_linha
from e_commerce.products