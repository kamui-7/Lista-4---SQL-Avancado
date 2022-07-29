USE db_ecomerce;

INSERT INTO tb_usuarios
VALUES 
(7, 'Gabriel Marins','Kamui','777777', 'CPF 444.555.444.23');

INSERT INTO tb_usuarios
VALUES
(46, 'Jesus', 'Jesuszão', '333333', 'CPF 000.000.000.01'),
(77, 'Antonio','Toninho','134652', 'CPF 002.000.000.00'),
(615, 'Juliana','Jujuba','133452', 'CPF 002.000.000.33');

INSERT INTO tb_produtos
VALUES
(1, 'Caderno', 'Caderno de 15 Materias', 12.50, 100, 'Material Escolar', 'URLFOTO'),
(12, 'Borracha', 'Borracha escolar, 15cm', 1.50, 1000, 'Material Escolar', 'URLFOTO'),
(77, 'Chocolate', 'Chocolate Nestré', 5.00, 50, 'Doces', 'URLFOTO'),
(848, 'Boneco do amigo Julio', 'Boneco do incrivel amigo Julio', 32.50, 20, 'Brinquedos', 'URLFOTO');

INSERT INTO compras
VALUES
(7, 1, '1992-11-11'),
(46, 12, '1992-2-1'),
(77, 77, '1993-3-1'),
(615, 848, '1995-3-5');

SELECT * FROM tb_usuarios;
SELECT * FROM tb_produtos;

SELECT Nome, Usuario FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%Gab%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 280;

SELECT * FROM tb_produtos
WHERE tb_produtos.Descricao IN ('Borracha escolar, 15cm');