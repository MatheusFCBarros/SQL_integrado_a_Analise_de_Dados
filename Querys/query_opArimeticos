-- PARA QUE SERVE ##################################################################
-- Servem para executar operações matemáticas
-- Muito utilizados para criar colunas calculadas

-- TIPOS ###########################################################################
-- +
-- -
-- *
-- /
-- ^
-- %
-- || --> unir strings 

-- Criar uma coluna contendo a idade do cliente da tabela sales.customers
select *
    from sales.customers 
        limit 5
        
select cpf, birth_date, (current_date - birth_date) / 365 as "idade do cliente" 
    --usar "" permite colocar o nome da coluna com espaços
    from sales.customers 

-- Listar os 10 clientes mais novos da tabela customers
select cpf, birth_date, (current_date - birth_date) / 365 as "idade do cliente" 
    --usar "" permite colocar o nome da coluna com espaços
    from sales.customers 
        order by "idade do cliente" 
            limit 10

-- Crie a coluna "nome_completo" contendo o nome completo do cliente
select first_name || ' ' || last_name as nome_completo
    from sales.customers
        
