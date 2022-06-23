-- PARA QUE SERVE ##################################################################
-- Servem para executar operações aritmética nos registros de uma coluna 


-- TIPOS DE FUNÇÕES AGREGADAS ######################################################
-- COUNT()
-- SUM()
-- MIN()
-- MAX()
-- AVG()


-- EXEMPLOS ########################################################################

-- COUNT() -------------------------------------------------------------------------

-- Contar todas as visitas realizadas ao site da empresa fictícia
select count (*) 
    from sales.funnel
    
-- Contar todos os pagamentos registrados na tabela sales.funnel 
select count (paid_date)
    from sales.funnel

-- Contar todos os produtos distintos visitados em jan/21
select count (product_id)
    from sales.funnel
        where visit_page_date between '2021-01-01' and '2021-01-31'
        
select count (distinct product_id)
    from sales.funnel
        where visit_page_date between '2021-01-01' and '2021-01-31'

-- OUTRAS FUNÇÕES ------------------------------------------------------------------

-- Calcular o preço mínimo, máximo e médio dos productos da tabela products
select min(price), max(price), avg(price)
           from sales.products
-- Informar qual é o veículo mais caro da tabela products
select max(price)
    from sales.products
    
select *
    from sales.products
        where price = (select max(price) from sales.products)








