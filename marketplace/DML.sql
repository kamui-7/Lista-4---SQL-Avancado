USE db_marketplace;

INSERT INTO tb_usuarios
VALUES 
(7, 'Gabriel Marins','Kamui','777777', 'Comprador', 'URLFOTO');

INSERT INTO tb_usuarios
VALUES
(46, 'Jesus', 'Jesuszão', '333333', 'Comprador', 'URLFOTO'),
(77, 'Antonio','Toninho','134652', 'Vendedor', 'URLFOTO'),
(615, 'Juliana','Jujuba','133452', 'Comprador', 'URLFOTO');

INSERT INTO tb_categoria
VALUES
(1, 'Material Escolar'),
(4, 'Chocolate'),
(7, 'Brinquedo');

INSERT INTO tb_produtos
VALUES
(1, 'Caderno', 'Caderno de 15 Materias', 12.50, 'URLIMG', 77, 1),
(12, 'Borracha', 'Borracha escolar, 15cm', 1.50, 'URLIMG', 77, 1),
(73, 'Chocolate', 'Chocolate Nestré', 5.00, 'URLIMG', 77, 4),
(848, 'Boneco do amigo Julio', 'Boneco do incrivel amigo Julio', 32.50, 'URLIMG', 77, 7);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos;

SELECT Nome, Usuario FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%Gab%';

SELECT * FROM tb_produtos
WHERE Id BETWEEN 0 AND 280;

SELECT * FROM tb_produtos
WHERE tb_produtos.Descricao IN ('Borracha escolar, 15cm');

