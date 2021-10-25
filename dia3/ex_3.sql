create database db_famacia_do_bem;

use db_famacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(30),
via varchar(30),
doc boolean,
primary key(id)
);

insert into tb_categoria(tipo,via,doc) values("Medicamento","Oral",false);
insert into tb_categoria(tipo,via,doc) values("Medicamento","Injeção",false);
insert into tb_categoria(tipo,via,doc) values("Medicamento","Oral",true);
insert into tb_categoria(tipo,via,doc) values("Medicamento","Injeção",true);
insert into tb_categoria(tipo,via,doc) values("Higiene","Oral",false);
insert into tb_categoria(tipo,doc) values("Higiene",false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50)not null,
preco decimal(6,2)not null,
validade date,
qtproduto int not null,
disponivel boolean,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Dorflex",2.90,"2021-12-31",12,true,1);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Dipirona",5.00,"2023-08-07",11,true,1);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Shampoo Dove",13.00,"2023-07-14",5,true,6);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Naftalina",30.00,"2021-11-25",0,false,4);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Tarja preta",55.00,"2022-01-06",25,true,4);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Tarfic",70.00,"2022-12-21",1,false,3);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Troic",34.50,"2024-12-16",40,true,2);
insert into tb_produto(nome,preco,validade,qtproduto,disponivel,categoria_id) values("Bacina",98.99,"2021-09-02",15,true,2);

select * from tb_produto;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select nome, preco, validade, qtproduto from tb_produto where preco > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select nome, preco, validade, qtproduto from tb_produto where preco > 3.00 and preco < 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%B%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_produto.nome, tb_produto.preco,  date_format(validade, "%d/%m/%Y") as Data_de_Nascimento, tb_produto.qtproduto, tb_produto.disponivel, tb_categoria.tipo, tb_categoria.via, tb_categoria.doc
from tb_produto inner join tb_categoria on tb_categoria.id = categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
select tb_produto.nome, tb_produto.preco,  date_format(validade, "%d/%m/%Y") as Data_de_Nascimento, tb_produto.qtproduto, tb_produto.disponivel, tb_categoria.tipo, tb_categoria.via, tb_categoria.doc
from tb_produto inner join tb_categoria on tb_categoria.id = categoria_id where tipo like "%Higiene%";