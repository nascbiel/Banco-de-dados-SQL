create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
categoria varchar(255) not null,
detalhado varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
tipo varchar(255) not null,
preco int not null,
cor varchar(255) not null,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (categoria,detalhado) VALUES ("ÁREA EXTERNA","focado mais para parte de fora de casa.");
INSERT INTO tb_categoria (categoria,detalhado) VALUES ("BANHEIRO","focado em banheiros");
INSERT INTO tb_categoria (categoria,detalhado) VALUES ("COZINHA E LAVANDERIA","foco na cozinha e lavanderia.");
INSERT INTO tb_categoria (categoria,detalhado) VALUES ("ELÉTRICA","foco na parte de eletricidade");
INSERT INTO tb_categoria (categoria,detalhado) VALUES ("FERRAMENTAS","foco em ferramentas");

select * from tb_categoria;

INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("TORNEIRA JARDIM LONGA","Marca:Leka",30,"Branco",1);
INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("FITA ISOLANTE 10 MT","Marca:3M",9,"Preto",4);
INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("GABINETE DE COZINHA SONIC 1 ~1,5 MTS","Marca:BONATTO",330,"Preto/Branco",3);
INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("DUCHAT MAXI DUCHA","Marca: Lorenzetti",55,"Branco",2);
INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("CABO FLEXIVEL 10 MM ROLO 100 MT","Marca:Cobrecom",920,"Preto,Azul,Verde,Amarelo",4);
INSERT INTO tb_produto (nome,tipo,preco,cor,categoria_id) VALUES ("OCULOS SEGURANÇA EPI","Marca:JAGUAR",10,"Preto/Branco",5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >=3 and tb_produto.preco <= 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.categoria ="ELÉTRICA";





