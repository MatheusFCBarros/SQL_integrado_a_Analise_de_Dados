-- TIPOS DE CONVERSÃO ##############################################################
-- Operador ::
-- CAST

-- Conversão de texto em data
-- Corrija a query abaixo utilizando o operador ::
SELECT '2021-10-01' - '2021-02-01'

SELECT '2021-10-01'::date - '2021-02-01'::date

--Conversão de texto em número
-- Corrija a query abaixo utilizando o operador ::
SELECT '100' - '10'

SELECT '100'::numeric - '10'::numeric

-- Conversão de número em texto
-- Corrija a query abaixo utilizando o operador ::
SELECT REPLACE(112122,'1','A')

SELECT REPLACE(112122::text,'1','A')


-- Conversão de texto em data
-- Corrija a query abaixo utilizando a função CAST
-- as vezes o :: nao funciona e entao é importante saber usar o CAST
SELECT '2021-10-01' - '2021-02-01'

SELECT CAST ('2021-10-01' AS date) - CAST('2021-02-01' AS date)
--

