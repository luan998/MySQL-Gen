-- Criando e usando a tabela
create database db_ex1;

use db_ex1;

-- Criando a tabela funcionaries
create table tb_funcionaries(
id bigint auto_increment,
nome varchar(30) not null,
idade int,
salario decimal(9,2),
setor varchar(30) not null,
cpf varchar(14) not null,
primary key(id)
);

-- Definindo os usuários
insert into tb_funcionaries(nome,idade,salario,setor,cpf) values("Antonio da Silva",45,2100.00,"Produção","066.705.310-79");
insert into tb_funcionaries(nome,idade,salario,setor,cpf) values("Maria Aparecida",34,3450.00,"RH","794.339.360-00");
insert into tb_funcionaries(nome,idade,salario,setor,cpf) values("Luis Junior",24,1400.00,"Estágiário","017.019.160-53");
insert into tb_funcionaries(nome,idade,salario,setor,cpf) values("Luciana Silva",29,2900.00,"RH","931.309.970-59");
insert into tb_funcionaries(nome,idade,salario,setor,cpf) values("Diego Brando",58,5000.00,"Administração","975.012.590-89");

-- Ver tudo
select * from tb_funcionaries;

-- Ver com salário maior que 2000
select * from tb_funcionaries where salario > 2000.00;

-- Ver com salário Menor que 2000
select * from tb_funcionaries where salario < 2000.00;

-- Atualizar dado da tabela
update tb_funcionaries set salario =1800.00 where id = 4;

