-- Criando e usando a database 
create database db_ex2;
use db_ex2;

-- Criando a tabela 
create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(8,2) not null,
quantidade int,
disponivel boolean,
frete boolean,
primary key(id)
);

-- Criando os produtos
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Relógio",350.00,5,true,false);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Colar de ouro",700.00,2,true,true);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Bracelente de prata", 420.00,0,false,false);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Óculos com diamantes",1100.00,9,true,false);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Óculos com ouro",645.00,3,true,true);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Bota", 300.00,15,true,false);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Caixa de xarutos",125.00,30,true,true);
insert into tb_produtos(nome,preco,quantidade,disponivel,frete) values("Cachecol", 225.00,0,false,true);

select * from tb_produtos;

-- Mais cachecóis chegaram para serem vendidos
update tb_produtos set quantidade = 20, disponivel  = true where id = 8;
