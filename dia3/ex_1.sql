create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment, 
classe varchar(30)not null,
atributo varchar(30)not null,
mana boolean,
primary key(id));

insert into tb_classe(classe,atributo,mana) values("Mago","Fogo",true);
insert into tb_classe(classe,atributo,mana) values("Arqueiro","Ar",false);
insert into tb_classe(classe,atributo,mana) values("Paladino","Trevas",true);
insert into tb_classe(classe,atributo,mana) values("Guerreiro","Terra",false);
insert into tb_classe(classe,atributo,mana) values("Ladino","Ar",true);

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(50) not null,
idade int not null,
def int,
atk int,
raca varchar(30)not null,
classe_id bigint,
primary key(id),
foreign key(classe_id) references tb_classe(id)
);

insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Manus",2000,4000,2500,"Demônio",3);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Artorias",1450,4250,1150,"Demônio",3);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Lothric",1670,2400,1300,"Humano",4);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Lautrec",400,2300,900,"Elfo",5);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Ashen One",300,1450,2100,"Humano",1);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Gwynvere",1500,100,5000,"Deus",1);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Nameles King",3000,2000,4200,"Deus",3);
insert into tb_personagem(nome,idade,def,atk,raca,classe_id) values("Patches",1200,1300,2400,"Humano",2);

select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem 
	inner join tb_classe on tb_classe.id = classe_id where tb_personagem.atk > 2000;
    
-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem  where tb_personagem.def> 1000 and tb_personagem.def < 2000;
    
-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_personagem where tb_personagem.nome like "%C%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem 
	inner join tb_classe on tb_classe.id = classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select tb_personagem.nome, tb_personagem.nome, tb_personagem.atk, tb_personagem.def, tb_personagem.raca, tb_classe.classe, tb_classe.atributo from tb_personagem 
	inner join tb_classe on tb_classe.id = classe_id where tb_classe.classe like "Paladino";
