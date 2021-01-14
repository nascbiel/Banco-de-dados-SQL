create database db_ecommerce;

use db_ecommerce;

create table produtos(
id bigint(5) auto_increment,
nome varchar(255) not null,
cor varchar(20) not null,
valor float not null,
quantidade int not null,

primary key(id)
);

ALTER TABLE produtos
CHANGE cor tipo varchar(20);

insert into produtos (nome, tipo, valor, quantidade) values ("processador I7","eletronico",2500,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador I3","eletronico",600,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador I5","eletronico",980,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador AMD Ryzen 5","eletronico",2500,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador AMD Ryzen 9","eletronico",4200,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador AMD Ryzen 7","eletronico",2300,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador I9","eletronico",4300,1);
insert into produtos (nome, tipo, valor, quantidade) values ("processador core duo","eletronico",130,1);

select * from produtos where valor > 500;
select * from produtos where valor < 500;

update produtos set nome="processador Celeron",valor=380 where id=7;

