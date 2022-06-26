-- PARA QUE SERVE ##################################################################
-- Servem para consultar dados de outras consultas.


-- TIPOS ###########################################################################
-- Subquery no WHERE
-- Subquery com WITH
-- Subquery no FROM
-- Subquery no SELECT

--Subquery no WHERE
-- Informar qual é o veículo mais barato da tabela products
--select *
    --from sales.products
        --where price = menor_preco
SELECT MIN(price) FROM sales.products

SELECT *
    FROM sales.products
        WHERE price = (SELECT MIN(price) FROM sales.products) --subquerie no WHERE sempre tem q 
                    --retornar apenas um valor, nao pode ser linha ou coluna

-- Subquery com WITH
-- Calcular a idade média dos clientes por status profissional
SELECT  PROFESSIONAL_STATUS ,  avg (IDADE) AS idade_media
    FROM calcula_idade
        GROUP BY professional_status

SELECT * FROM sales.customers LIMIT 10 --ESSA TABELA NAO TEM A IDADE DOS CLIENTES 
                                    --MAS TEM A DATA DE NASCIMENTO
                                    
SELECT professional_status, (CURRENT_DATE - birth_date)/365 AS idade
    FROM sales.customers
   
-- Tendo preparado as informações necessárias entao

WITH calcula_idadeMedia AS ( 
    SELECT professional_status, 
        (CURRENT_DATE - birth_date)/365 AS idade
            FROM sales.customers
)
SELECT  PROFESSIONAL_STATUS ,  avg (IDADE) AS idade_media
    FROM calcula_idadeMedia
        GROUP BY professional_status

--Subquery no FROM
-- Calcular a média de idades dos clientes por status profissional

SELECT  
    professional_status ,  
        avg (IDADE) AS idade_media
    FROM (
        SELECT professional_status, 
            (CURRENT_DATE - birth_date)/365 AS idade
                FROM sales.customers
    ) AS calcula_idadeMedia
    GROUP BY professional_status
-- é aconselhavel usar a subquerie no WITH e nao no FROM por ser mais legivel

--Subquery no SELECT
-- Na tabela sales.funnel crie uma coluna que informe o nº de visitas acumuladas 
-- que a loja visitada recebeu até o momento

SELECT fun.visit_id, 
       fun.visit_page_date, 
       sto.store_name,
       (
        SELECT COUNT (*)
            FROM sales.funnel AS fun2
                where fun2.visit_page_date <=fun.visit_page_date 
                    AND fun2.store_id = fun.store_id
       ) AS visitas_acumuladas
    FROM sales.funnel AS fun
        LEFT JOIN sales.stores AS sto
            ON  fun.store_id = sto.store_id 
        ORDER BY sto.store_name, fun.visit_page_date
 
