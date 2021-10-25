create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(30)not null,
frete boolean not null,
primary key(id)
);

insert into tb_categoria(categoria,frete) values("Hidráulica",true);
insert into tb_categoria(categoria,frete) values("Energia",true);
insert into tb_categoria(categoria,frete) values("Estrutura",true);
insert into tb_categoria(categoria,frete) values("Hidráulica",false);
insert into tb_categoria(categoria,frete) values("Energia",false);
insert into tb_categoria(categoria,frete) values("Estrutura",false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(50)not null,
preco decimal(7,2)not null,
qtproduto int not null,
atacado boolean,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Cabo de energia",60.00,95,true,2);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Cano PVC",8.00,500,true,1);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Bloco de concreto",20.50,200,false,6);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Telha",35.00,1200,true,3);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Disjuntor",70.00,20,false,5);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Torneira",25.00,15,false,4);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Tomada",10.00,30,false,5);
insert into tb_produto(nome,preco,qtproduto,atacado,categoria_id) values("Azulejo",15.00,800,true,3);

select * from tb_produto;


-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where preco > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select tb_produto.nome, tb_produto.preco, tb_categoria.categoria from tb_produto
inner join tb_categoria on tb_categoria.id = categoria_id where preco > 3.00 and preco < 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select nome,preco,atacado from tb_produto where nome like "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_produto.nome, tb_produto.preco,tb_produto.qtproduto, tb_categoria.categoria, tb_categoria.frete from tb_produto
inner join tb_categoria on tb_categoria.id = categoria_id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).
select tb_produto.nome, tb_produto.preco,tb_produto.qtproduto, tb_categoria.categoria, tb_categoria.frete from tb_produto
inner join tb_categoria on tb_categoria.id = categoria_id where categoria like "%hidráulica%";