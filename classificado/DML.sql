USE db_classificados;

INSERT INTO tb_usuarios
VALUES 
(7, 'Gabriel Marins','Kamui','777777', 'CPF', 'URLFOTO');

INSERT INTO tb_usuarios
VALUES
(46, 'Jesus', 'Jesuszão', '333333', 'CNPJ', 'URLFOTO'),
(77, 'Antonio','Toninho','134652', 'CPF', 'URLFOTO'),
(615, 'Juliana','Jujuba','133452', 'CPF', 'URLFOTO');

INSERT INTO tb_anuncios
VALUES
(1, 'Aluga-se', 'Apto de 3 Qtos', '0xx - 11 2334-3333', 'URLFOTO', '2022-12-11', 7),
(12, 'Vende-se', 'Carro 0Km', '0xx - 11 2332-3313', 'URLFOTO', '2022-12-11', 46),
(77, 'Procura-se', 'Funcionarios para a Pizzaria do Boaz', '0xx - 21 2434-3333', 'URLFOTO', '2022-12-11', 77),
(848, 'Vende-se', 'Apto de 1 Qto', '0xx - 31 2334-3663', 'URLFOTO', '2022-12-11', 615);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

SELECT Nome, Usuario FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%Gab%';

SELECT * FROM tb_usuarios
WHERE Id BETWEEN 0 AND 280;

SELECT * FROM tb_anuncios
WHERE tb_anuncios.Dataa IN ('2022-12-11');