-- PARA QUE SERVE ##################################################################
-- Usados para unir expressões simples em uma composta

-- TIPOS ###########################################################################
-- AND
-- OR
-- NOT
-- BETWEEN
-- IN
-- LIKE
-- ILIKE
-- IS NULL

-- Selecionar veículos que custam entre 100k e 200k na tabela products
select *
    from sales.products
        where price >= 100000 and price <= 200000

select *
    from sales.products
        where price between 100000 and 200000

-- Selecionar veículos que custam abaixo de 100k ou acima 200k 
select *
    from sales.products
        where price < 100000 or price > 200000

select *
    from sales.products
        where price  not between 100000 and 200000
        
-- Selecionar produtos que sejam da marca HONDA, TOYOTA ou RENAULT
select *
    from sales.products
        where brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'
        
select *
    from sales.products
        where brand in  ('HONDA' , 'TOYOTA' , 'RENAULT') 


-- Selecionar os primeiros nomes distintos da tabela customers que começam
-- com as iniciais ANA
select distinct first_name
    from sales.customers
        where first_name = 'ANA'

select distinct first_name
    from sales.customers
        where first_name like 'ANA%' --% indica q depois da sequencia desejada pode ter qualquer coisa
        
select distinct first_name
    from sales.customers
        where first_name like '%ANA' --% indica q antes da sequencia desejada pode ter qualquer coisa
        
-- Selecionar os primeiros nomes distintos com iniciais 'ana'
select distinct first_name 
    from sales.customers 
        where first_name ilike 'ana%'
        
-- Selecionar apenas as linhas que contém nulo no campo "population" na tabela
-- temp_tables.regions
select *
    from temp_tables.regions
        
select *
    from temp_tables.regions
        where population = null -- comando null nao funciona com =
        
select *
    from temp_tables.regions
        where population is null

