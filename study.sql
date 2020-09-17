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
    MAIS EXERCÍCIOS COM JOIN:
        SELECT pr.ListPrice, pr.Name, pc.Name
        FROM Production.Product Pr
        INNER JOIN Production.ProductSubcategory PC on PC.ProductSubcategoryID = pr.ProductSubcategoryID

        SELECT TOP 10 * (SELECIONA TODOS OS DADOS PRESENTES EM AMBAS AS TABELAS E AGREGA TODAS EM UMA ÚNICA TABELA)
        FROM Person.BusinessEntityAddress BA
        INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

        SELECT tb.BusinessEntityID, ta.Name, ta.PhoneNumberTypeID, tb.PhoneNumber
        FROM person.PhoneNumberType ta 
        INNER JOIN Person.PersonPhone tb on ta.PhoneNumberTypeID = tb.PhoneNumberTypeID

        SELECT t2.AddressID, t2.City as "Cidade", t1.StateProvinceID, t1.Name as "Estado"
        FROM person.StateProvince t1
        INNER JOIN person.Address t2 on t1.StateProvinceID = t2.StateProvinceID

    TIPOS DE JOIN:
        INNER JOIN: retorna apenas os resultados que existem tanto na tabela A quanto na tabela B (intersecção de ambos);
        FULL OUTER JOIN: Retorna valores correspondentes da tabela A e B quando são iguais, caso não existam valores correspondentes ele preencherá os campos com NULL;
        LEFT OUTER JOIN (ou LEFT JOIN): Traz todos os valores da tabela A, mas apenas os valores correspondentes da tabela B, de modo que, caso os dados da tabela B sejam divergentes da tabela A, o valor será retornado como NULL;
        RIGHT OUTER JOIN (ou RIGHT JOIN): Mesma condição que o acima, apenas invertendo os tabelas, em que todos os valores de B serão preenchidos enquanto apenas os correspondentes de A serão preenchidos.

    UNION(usado para unier valores de tabelas e criar tabelas únicas)
        
*\
    