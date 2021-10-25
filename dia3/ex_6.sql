create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(30),
fullstack boolean,

primary key(id)
);

insert into tb_categoria(categoria,fullstack) values("Java",true);
insert into tb_categoria(categoria,fullstack) values("Java",false);
insert into tb_categoria(categoria,fullstack) values("Python",false);
insert into tb_categoria(categoria,fullstack) values("C",true);
insert into tb_categoria(categoria,fullstack) values("C",false);

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar(150)not null,
duracao int not null,
gratuito boolean,
preco decimal(8,2)not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("POO Introdução",20,true,0.00,4);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Recursos aritméticos",6,true,0.00,3);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("POO Avançado",20,false,160.00,1);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Back End Completo",40,false,280.00,4);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Comandos Básicos",6,true,0.00,5);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Array List guia completo",12,false,80.00,1);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Interface básica",10,false,40.00,2);
insert into tb_curso(nome,duracao,gratuito,preco,categoria_id) values("Interface e polimorfismo",28,false,140.00,1);

select * from tb_curso;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_curso where preco > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select nome,duracao,gratuito,preco from tb_curso where preco > 3.00 and preco < 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select nome,duracao,gratuito,preco from tb_curso where nome like "%j%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_curso.nome, tb_curso.duracao,tb_curso.gratuito,tb_categoria.categoria, tb_categoria.fullstack, tb_curso.preco 
from tb_curso inner join tb_categoria on tb_categoria.id = categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).
select tb_curso.nome, tb_curso.duracao,tb_curso.gratuito,tb_categoria.categoria, tb_categoria.fullstack, tb_curso.preco 
from tb_curso inner join tb_categoria on tb_categoria.id = categoria_id where categoria = "Java";
