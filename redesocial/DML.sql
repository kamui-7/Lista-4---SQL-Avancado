USE db_redesocial;

INSERT INTO tb_usuarios
VALUES 
(7, 'Gabriel Marins','Kamui','777777', 'URLFOTO');

INSERT INTO tb_usuarios
VALUES
(46, 'Jesus', 'Jesuszão', '333333', 'URLFOTO'),
(77, 'Antonio','Toninho','134652', 'URLFOTO'),
(615, 'Juliana','Jujuba','133452', 'URLFOTO');

INSERT INTO tb_grupos
VALUES
(111, 'Odeio Segundas-Feiras', 'Para você que odeia segundas.','URLIMAGEM', 46),
(122, 'Levei chinelada do Boaz', 'A chinelada do Boaz foi super efetiva','URLIMAGEM', 77),
(737, 'Eu acredito no Santo Binho', 'Comunidade do Santo Binho','URLIMAGEM', 615),
(848, 'Sou amigo de Jesus', 'Entre se for friend de Jesus','URLIMAGEM', 7);

INSERT INTO tb_postagem
VALUES
(1, 'Bem-vindo.', 'O grupo te da as boas vindas, fique atento as regras.', 'IMAGEMDAPOSTAGEN', '1992-12-11', 7, 111);

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagem;

SELECT Nome, Usuario, Foto FROM tb_usuarios;

SELECT * FROM tb_usuarios
WHERE Usuario LIKE '%Kam%';

SELECT * FROM tb_grupos
WHERE Id BETWEEN 0 AND 280;

SELECT * FROM tb_postagem
WHERE tb_postagem.DataPostagem IN ('1992-12-11');