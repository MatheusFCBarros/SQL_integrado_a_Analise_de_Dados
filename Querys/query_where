-- PARA QUE SERVE ##################################################################
-- Serve para filtrar linhas de acordo com uma condição

-- Listar os emails dos clientes da nossa base que moram no estado de Santa Catarina
select distinct state
   from sales.customers

select email, state
    from sales.customers 
        where state = 'SC'

-- Listar os emails dos clientes da nossa base que moram no estado de Santa Catarina ou Mato Grosso do Sul
select email, state
    from sales.customers 
        where state = 'SC' or state = 'MS'

-- Listar os emails dos clientes da nossa base que moram no estado de Santa Catarina 
-- ou Mato Grosso do Sul e que tem mais de 30 anos
select distinct birth_date
 from sales.customers

select email, state, birth_date
    from sales.customers 
        where (state = 'SC' or state = 'MS') and birth_date <'1992-06-21'
        
