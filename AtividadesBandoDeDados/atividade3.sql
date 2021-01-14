create database db_escola;

use db_escola;

create table tb_alunos(
id bigint(5) auto_increment,
nome varchar(255) not null,
sala int not null,
notas int not null,
registro int not null,

primary key(id) 
);

insert into tb_alunos (nome,sala,notas,registro) values ("Gabriel",1,8,1);
insert into tb_alunos (nome,sala,notas,registro) values ("Izabella",1,5,2);
insert into tb_alunos (nome,sala,notas,registro) values ("Guilherme",1,2,3);
insert into tb_alunos (nome,sala,notas,registro) values ("Pablo",1,4,4);
insert into tb_alunos (nome,sala,notas,registro) values ("João",1,10,5);
insert into tb_alunos (nome,sala,notas,registro) values ("Matheus",1,9,6);
insert into tb_alunos (nome,sala,notas,registro) values ("Natan",1,3,7);
insert into tb_alunos (nome,sala,notas,registro) values ("Amanda",1,7,8);

select * from tb_alunos where notas > 7;
select * from tb_alunos where notas < 7;

update tb_alunos set notas=8 where id=8;






