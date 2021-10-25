create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(30) not null,
ativo boolean not null,
suco boolean not null,
primary key(id)
);

insert into tb_categoria(tamanho, ativo, suco) values("Grande",true,true);
insert into tb_categoria(tamanho, ativo, suco) values("Pequeno",true,true);
insert into tb_categoria(tamanho, ativo, suco) values("Grande",true,false);
insert into tb_categoria(tamanho, ativo, suco) values("Pequeno",true,false);
insert into tb_categoria(tamanho, ativo, suco) values("Pequeno",false,false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(40)not null,
preco decimal(6,2)not null,
disponivel boolean,
maduro boolean,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Mamão",4.00,true,false,3);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Banana",6.00,true,true,3);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Pêra",7.00,true,true,2);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Maçã",1.50,true,false,2);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Limão",4.00,true,false,2);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Melância",5.99,true,true,1);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Laranja",2.99,true,true,2);
insert into tb_produto(nome,preco,disponivel,maduro,categoria_id) values("Tamarindo",12.00,false,true, 2);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 5.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where preco > 3.00 and preco <6.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select nome,preco,disponivel,maduro from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_produto.nome, tb_produto.preco, tb_categoria.tamanho, tb_produto.maduro, tb_categoria.suco 
from tb_produto inner join tb_categoria on tb_categoria.id = categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são aves ou legumes).
select tb_produto.nome, tb_produto.preco, tb_categoria.tamanho, tb_produto.maduro, tb_categoria.suco 
from tb_produto inner join tb_categoria on tb_categoria.id = categoria_id where tamanho like "%Grande%";
