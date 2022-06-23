-- PARA QUE SERVE ##################################################################
-- Serve para filtrar linhas da seleção por uma coluna agrupada


-- Calcular o nº de clientes por estado filtrando apenas estados acima de 100 clientes
select state,  count(*)
    from sales.customers
        group by state
        
select state,  count(*)
    from sales.customers
        group by state
            having count (*) > 100
select state,  count(*)
    from sales.customers
        where state <> 'MG' --WHERE PODE SER UTIILIZADO SO EM COLUNAS NAO AGREGADAS
            group by state
                having count (*) > 100 -- FUNCIONA PARA COLUNAS AGREGADAS E NAO AGREGADAS
select state,  count(*)
    from sales.customers
            group by state
                having count (*) > 100 and state <> 'MG'









