CREATE DATABASE db_ecomerce;

USE db_ecomerce;

CREATE TABLE tb_usuarios (
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(45) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
	Documento VARCHAR(45) NULL,
);

CREATE TABLE tb_produtos (
	Id INT NOT NULL PRIMARY KEY,
	Produto VARCHAR(45) NOT NULL,
	Descricao VARCHAR(45) NOT NULL,
	Valor FLOAT NOT NULL,
	Estoque INT NOT NULL,
	Categoria VARCHAR(45) NOT NULL,
	Foto VARCHAR(255) NULL,
	);

	CREATE TABLE compras (
	FK_Usuario INT NOT NULL,
	FK_Produto INT NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Produto) REFERENCES tb_produtos (Id),
	Dataa DATE NOT NULL,
);

