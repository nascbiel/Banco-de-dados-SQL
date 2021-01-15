create database db_generation_game_online;

use db_generation_game_online;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(255) not null,
fraqueza varchar(255) not null,
primary key(id)
);

create table tb_pokemon(
id bigint auto_increment,
nome_Pokemon varchar(255) not null,
ataque varchar(255) not null,
defesa varchar(255) not null,
tipo_id bigint,
primary key (id),
foreign key (tipo_id) references tb_categoria (id)
);

INSERT INTO tb_categoria (tipo, fraqueza) values ("Água","Planta e Elétrico");
INSERT INTO tb_categoria (tipo, fraqueza) values ("Fogo","Água, Terrestre e Pedra");
INSERT INTO tb_categoria (tipo, fraqueza) values ("Planta","Fogo, Voador, Gelo, Venenoso e Inseto");
INSERT INTO tb_categoria (tipo, fraqueza) values ("Elétrico","Terrestre");
INSERT INTO tb_categoria (tipo, fraqueza) values ("Voador","Elétrico, Pedra e Gelo");

select * from tb_categoria;

INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Pidgey","45","40",1);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Pikachu","55","40",5);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Oshawott"," 55","45",2);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Bulbassauro","49","49",4);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Charmander","52","43",3);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Squirtle","48","65",2);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Cyndaquil","52","43",3);
INSERT INTO tb_pokemon (nome_pokemon,ataque,defesa,tipo_id) VALUES ("Totodile","65","64",2);

select * from tb_pokemon;

update tb_pokemon set ataque = "55" where id= 3;

select nome_pokemon, ataque, defesa,tipo,fraqueza
 from tb_pokemon 
 inner join tb_categoria on tb_categoria.id = tb_pokemon.tipo_id;
 
 select nome_pokemon,ataque,defesa
 from tb_pokemon where ataque = "55";

select nome_pokemon,ataque,defesa
 from tb_pokemon where defesa = "40";
 
 select * from tb_pokemon where nome_pokemon  like "%C%";
 
select nome_pokemon, ataque, defesa,tipo,fraqueza
 from tb_pokemon 
 inner join tb_categoria on tb_categoria.id = tb_pokemon.tipo_id where tipo ="Água";



