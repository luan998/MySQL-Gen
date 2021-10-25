-- Criando e usando a database 
create database db_ex3;
use db_ex3;

-- Criando a tabela 
create table tb_estudantes(
id bigint auto_increment,
nome varchar(30) not null,
idade int not null,
ano int not null,
nota int not null,
rg varchar(13) not null,
primary key(id)
);

-- Cometi erro e criei como int as notas, arrumando com alter
alter table tb_estudantes modify nota decimal(4,2);

-- Criando os alunes
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Lucas Santos",14,8,09.40,"34.498.307-9");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("José Rodrigues",12,7,8.50,"34.716.541-2");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Ana Maria",11,6,6.00,"42.768.188-1");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Wellingto Prado",10,5,4.50,"38.276.630-1");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Lucas Ferreira",13,7,7.20,"47.262.582-2");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Mateus Oliveira",13,8,10.00,"13.171.097-7");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Enzo Gabriel",9,5,3.00,"49.979.269-5");
insert into tb_estudantes(nome,idade,ano,nota,rg) values ("Marcelo Pavais",15,9,9.00,"23.413.546-3");

select * from tb_estudantes;

-- Estudantes com nota maior que 7
select * from tb_estudantes where nota > 7;
-- Estudantes com nota menor que 7
select * from tb_estudantes where nota < 7;

-- Atualizando informação de um estudante 
update tb_estudantes set idade = 13 where id = 2;