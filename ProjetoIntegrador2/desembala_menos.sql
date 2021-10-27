create database db_desembala_menos;

use db_desembala_menos;

CREATE TABLE `Categoria` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`categoria` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`palavrachave` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produto` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nome` varchar(255) NOT NULL,
	`preco` DECIMAL(8,2) NOT NULL,
	`dtfabricacao` DATE NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`imagem` varchar(1000) NOT NULL,
	`ativo` BOOLEAN NOT NULL,
	`categoria_id` bigint NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`nomeCompleto` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Produto` ADD CONSTRAINT `Produto_fk0` FOREIGN KEY (`categoria_id`) REFERENCES `Categoria`(`id`);



