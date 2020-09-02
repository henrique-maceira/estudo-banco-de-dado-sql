/* 
Comandos utilizados no SSMS 
    SELECT -> coluna que deseja buscar
    FROM -> pasta em que se deseja buscar
    PARA NOMEAR UMA COLUNA CRIADA, USAR: AS "nome da coluna" 
    DISTINCT -> para não contabilizar itens repetidos
    WHERE -> coluna ou item desejado (=, >, <, >=, <=, AND, OR, <>diferente de) "objeto desejado" ou valor
    COUNT -> para fazer a contagem de determinadas colunas
        SELECT COUNT(name)
    TOP -> seleciona os primeiros itens escolhidos 
        SELECT TOP 10 * seleciona os primeiros 10 itens da tabela em questão
    ORDER BY -> ordena os dados que irão aparecer na tabela(pode ser combinado com o TOP)
        SELECT 
        FROM 
        ORDER BY (objeto de busca) asc ou desc 
    BETWEEN -> busca valores entre um valor mínimo e máximo
        SELECT *
        FROM Production.Product
        WHERE ListPrice between 1000 AND 1500 
        para buscar os que estão fora de 1000 até 1500:
            WHERE ListPrice NOT between 1000 AND 1500
    IN -> busca pelos valores buscados, usado junto ao WHERE, pode ser usado o NOT IN
        valor IN (valor1, valor2)
        SELECT *
        FROM Person.Person
        WHERE BusinessEntityID IN (2, 7, 13)
    LIKE -> para enontrar valores relacionados ao que vc inserir, o % representa qualquer valor possível,
        o símbolo _ substitui apenas 1 valor enquanto o % pode ter infinitos valores
        SELECT*
        FROM 
        WHERE FirstName like 'ovi%'
    MIN -> encontra o valor mínimo
    MAX -> encontra o valor máximo
    SUM -> soma os valores 
        SELECT TOP 10 SUM(linetotal) AS "SOMA"
        FROM sales.SalesOrderDetail
    AVG (MÉDIA)
        SELECT TOP 10 avg(linetotal) as "MÉDIA"
        FROM sales.SalesOrderDetail
    GROUPBY -> para agrupar elementos que se repetem 
        SELECT FirstName, Count(FirstName) as"contagem"
        FROM Person.Person
        GROUP BY FirstName
    HAVING -> usado para filtrar dados agrupados. Pode ser usado com ou sem o WHERE
        SELECT FirstName, count(FirstName) as "quantidade"
        FROM Person.Person
        WHERE Title = 'Mr.'
        GROUP BY FirstName
        HAVING count(FirstName) > 10
    JOIN -> para utilizar informações de diferentes tabelas
        SELECT p.businessEntityID, p.FirstName, p.LastName, pe.EmailAddress -> identificar quais informações serão buscadas em cada tabela
        FROM Person.Person as P
        INNER JOIN Person.EmailAddress PE on p.BusinessEntityID = pe.BusinessEntityID
        inner join identifica qual tabela está sendo consultada, e determinar o termo em comum entre essas tabelas para que seja possível a identificação dos termos
    
*\
    