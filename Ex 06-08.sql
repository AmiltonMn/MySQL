USE bookstore;


-- 1

SELECT
	L.Titulo as "Título do Livro",
    A.Nome as "Autor"
FROM 
	livros L
	INNER JOIN Autores A
    ON L.autor_id = A.autor_id;

-- 2

SELECT
	L.Titulo as "Título do Livro",
    A.Nome as "Autor"
FROM 
	livros L
	LEFT JOIN Autores A
    ON L.autor_id = A.autor_id;
    
-- 3

SELECT
	L.Titulo as "Título do Livro",
    A.Nome as "Autor"
FROM 
	livros L
	RIGHT JOIN Autores A
    ON L.autor_id = A.autor_id;
    
-- 4

SELECT
	C.Nome as "Cliente",
	L.Titulo as "Título do Livro",
    P.Quantidade as "Quantidade"
FROM 
	Clientes C
INNER JOIN
	Livros L 
	ON C.cliente_id = L.livro_id
INNER JOIN
	Pedidos P
    ON L.livro_id = P.livro_id;
    
-- 5

SELECT
	C.Nome as "Cliente",
    P.data_pedido as "Data"
FROM 
	Clientes C
INNER JOIN
	Pedidos P
    ON C.cliente_id = P.Cliente_id;

-- 6

SELECT
	L.Titulo as "Título do Livro",
    C.Nome as "Nome do Cliente",
    P.Quantidade as "Quantidade"
FROM 
	Livros L 
    LEFT JOIN
    Pedidos P 
    ON P.livro_id = L.livro_id
    LEFT JOIN
    Clientes C
    ON C.cliente_id = P.cliente_id;
    
-- 7

SELECT
	C.Nome as "Nome do Cliente"
FROM
	Clientes C 
    INNER JOIN
    Pedidos P
WHERE
	P.pedido_id = null;
    
-- 8

SELECT
	A.Nome "Nome do Autor",
    L.Titulo "Título do Livro",
    L.Preco "Preço do Livro"
FROM
	autores A
    INNER JOIN
    livros L
    ON A.autor_id = L.autor_id
WHERE
	L.Preco > 20;
    
-- 9

SELECT
	L.Titulo "Título do Livro",
    A.Nome "Nome do Autor"
FROM
	livros L
	INNER JOIN autores A
    ON A.autor_id = L.autor_id;
    
-- 10

SELECT
	*
FROM
	pedidos P
    LEFT JOIN clientes C
    ON P.cliente_id = C.cliente_id;
    
-- 11

SELECT
	A.Nome "Nome do Autor"
FROM
	autores A
    INNER JOIN livros L 
    ON A.autor_id = L.autor_id
    INNER JOIN pedidos P
    ON L.livro_id = P.livro_id
WHERE
	P.Quantidade > 1;
    
-- 12

SELECT
	P.pedido_id "Número do Pedido",
	C.Nome "Nome do Cliente",
    L.Titulo "Título do Livro"
FROM
	pedidos P 
    LEFT JOIN clientes C 
    ON P.cliente_id = C.cliente_id
    LEFT JOIN livros L
    ON L.livro_id = P.pedido_id;

-- 13

SELECT
	A.Nome "Nome do Autor",
    L.Titulo "Nome do Livro",
    P.data_pedido