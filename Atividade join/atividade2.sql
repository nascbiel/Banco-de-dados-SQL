create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(255)  not null,
tamanho varchar(255) not null,
primary key (id)
);

create table  tb_pizza(
id bigint auto_increment,
tipoDoceSalgado varchar(255) not null,
nome varchar(255) not null,
descricao varchar(255) not null,
preco int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_categoria (tipo, tamanho) VALUES ("PIZZA BROTO","04 FATIAS");
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("PIZZA MÉDIA","06 FATIAS");
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("PIZZA GRANDE","09 FATIAS");
INSERT INTO tb_categoria (tipo, tamanho) VALUES ("PIZZA BIG","12 FATIAS");

select * from tb_categoria;

INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("SALGADO","FRANGO C/ CATUPIRY","MOLHO DE TOMATE, MUSSARELA, FRANGO DESFIADO AO MOLHO DE CATUPIRY",36,3);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("SALGADO","MUSSARELA","MOLHO DE TOMATE E MUSSARELA (2 CAMADAS)",29,1);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("SALGADO","PORTUGUESA","MOLHO DE TOMATE, PRESUNTO, MUSSARELA, OVOS, CEBOLA E AZEITONAS",33,2);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("SALGADO","FRANGO","MOLHO DE TOMATE, MUSSARELA, FRANGO DESFIADO E REFOGADO",41,4);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("DOCE","PRESTIGIO","CHOCOLATE PRETO E CÔCO RALADO",43,4);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("DOCE","BRIGADEIRO","CREME DE LEITE, CHOCOLATE PRETO OU BRANCO. FIOS DE BISNAGA E GRANULADO",38,2);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("DOCE","CONFETTI","CREME DE LEITE, CHOCOLATE PRETO OU BRANCO, FIOS DE BISNAGA DE CHOCOLATE E COFETTI",51,4);
INSERT INTO tb_pizza (tipoDoceSalgado,nome,descricao,preco,categoria_id) VALUES ("SALGADO","MIGNON COM CHEDDAR","MOLHO DE TOMATE, MUSSARELA, MIGNON NA MANTEIGA E CHEDDAR",66,4);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco >29 and preco < 60;

select * from tb_pizza where nome like "%C%";

select nome,descricao, tb_pizza.preco as preço, tipo, tamanho
 from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
 
 select nome,descricao, tb_pizza.preco as preço, tipo, tamanho
 from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo = "PIZZA GRANDE";
 



