-- criar um banco de dados
create database db_servico_rh;

use db_servico_rh;

create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(20) not null,
idade int not null,
salario float not null,
endereco varchar(255) not null,
primary key (id)
);

insert into tb_funcionarios (nome,idade,salario,endereco) values ("Gabriel",18,4500,"Rua estelar");
insert into tb_funcionarios (nome,idade,salario,endereco) values ("Henrique",20,4800,"Rua cosmos");
insert into tb_funcionarios (nome,idade,salario,endereco) values ("Douglas",24,6000,"Rua solar");
insert into tb_funcionarios (nome,idade,salario,endereco) values ("Ana",28,6400,"Rua estrela");
insert into tb_funcionarios (nome,idade,salario,endereco) values ("Izabella",26,5000,"Rua universo");

select * from tb_funcionarios where salario > 2000; 
select * from tb_funcionarios where salario < 2000; 
 
update tb_funcionarios set idade = 25,salario = 1800 where id=3;





