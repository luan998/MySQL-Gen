create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(20) not null,
tamanho varchar(20) not null,
disponivel boolean,
primary key(id)
);

insert into tb_categoria(tipo,tamanho,disponivel) values ("Salgada","Grande",true);
insert into tb_categoria(tipo,tamanho,disponivel) values ("Doce","Grande",true);
insert into tb_categoria(tipo,tamanho,disponivel) values ("Salgada","Grande",false);
insert into tb_categoria(tipo,tamanho,disponivel) values ("Doce","Grande",false);
insert into tb_categoria(tipo,tamanho,disponivel) values ("Salgada","Pequena",true);
insert into tb_categoria(tipo,tamanho,disponivel) values ("Salgada","Pequena",false);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(30) not null,
ingredientes varchar(50) not null,
preco decimal(5,2) not null,
tipo varchar(30) not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Jurassic Park","Carne",35.00,"Comum",1);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Tom e Jerry","Queijo",30.00,"Vegetariana",1);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Little Park","Carne",26.00,"Comum",5);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Jerry","Queijo",23.00,"Vegetariana",5);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("João Frango","Frango com catupiry",40.00,"Comum",1);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Peixoto","Bacalhau",53.00,"Comum",3);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Jerry Gourmet","Quatro queijos",47.00,"Vegetariana",1);
insert into tb_pizza(nome,ingredientes,preco,tipo,categoria_id) values("Delicia não gelada","Chocolate e morango",40.00,"Comum",2);

select * from tb_pizza;

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.tipo from tb_pizza where preco > 45.00;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.tipo from tb_pizza where preco > 29.00 and preco < 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.tipo, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza
inner join tb_categoria on tb_categoria.id = categoria_id;


-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são pizza doce).
select tb_pizza.nome, tb_pizza.ingredientes, tb_pizza.preco, tb_pizza.tipo, tb_categoria.tipo, tb_categoria.tamanho from tb_pizza
inner join tb_categoria on tb_categoria.id = categoria_id where tb_categoria.tipo like "%Doce%";
