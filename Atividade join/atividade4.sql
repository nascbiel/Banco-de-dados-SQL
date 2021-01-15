create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
categoria varchar(255) not null,
significado varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(255) not null,
tipoCorte varchar(255) not null,
preco int not null,
kg_arredondado int not null,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (categoria,significado) VALUES ("BOVINAS","CARNE DE VACA");
INSERT INTO tb_categoria (categoria,significado) VALUES ("SUÍNAS","CARNE DE PORCO");
INSERT INTO tb_categoria (categoria,significado) VALUES ("LINGUIÇAS","CARNE DE PORCO ADICIONADA DE TEMPERO E CONDIMENTOS");
INSERT INTO tb_categoria (categoria,significado) VALUES ("AVES","FRANGO, PERU, PATO E ETC.");
INSERT INTO tb_categoria (categoria,significado) VALUES ("CORDEIROS","CARNE DE CORDEIRO");

select * from tb_categoria;

INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Bisteca Suína-Congelada","FILE",14,28,2);
INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Linguiça A Moda de Bragança-Autêntica","Linguiça de lombo suíno temperado, levemente apimentado.",34,1,3);
INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Acém Cubos","Cubos",19,38,1);
INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Coxa de Frango","A coxa de frango é um corte que permite grande variedade no preparo. Muito utilizada na grelha ou no forno, assada ou frita.",12,1,4);
INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Coxa c/ Sobrecoxa"," é um corte que permite grande variedade no preparo. Muito utilizada na grelha ou no forno, assada ou frita.",14,1,4);
INSERT INTO tb_produto (nome,tipoCorte,preco,kg_arredondado,categoria_id) VALUES ("Carré de Cordeiro com Chimichurri","Carré de cordeiro temperado com chimichurri tradicional.",170,1,5);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >=3 and tb_produto.preco <= 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.categoria ="BOVINAS";





