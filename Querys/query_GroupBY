-- PARA QUE SERVE ##################################################################
-- Serve para agrupar registros semelhantes de uma coluna
-- Normalmente utilizado em conjunto com as Funções de agregação


-- Calcular o nº de clientes da tabela customers por estado
select count(*)
    from sales.customers
select state, count(*) as contagem
    from sales.customers
        group by state 
            order by contagem desc
            
-- Calcular o nº de clientes por estado e status profissional 
select state, professional_status, count(*) as contagem
    from sales.customers
        group by state,  professional_status
            order by state, contagem desc

-- Selecionar os estados distintos na tabela customers utilizando o group by
select distinct state
    from sales.customers

select state
    from sales.customers
        group by state



