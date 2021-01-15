-- cria o banco de dados
create database db_cidade_das_carnes;
 
 -- acessa o banco de dados
use db_cidade_das_carnes;

-- cria a tabela
create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

-- insere dados na tabela
insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert tb_categoria (descricao, ativo) values ("imbutidos",true);
insert tb_categoria (descricao, ativo) values ("outros",true);

-- busca 
select * from tb_categoria;

-- cria a tabela
create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

-- insere dados na tabela
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("ASA",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",20.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Orelha de porco",20.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",20.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("medalhao",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("mocoto",20.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("chuleta",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);

-- busca
select * from tb_produtos;

-- busca com like
select * from tb_produtos where nome Like "%Ba%";

-- inner join
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 -- left join
 select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos left join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 -- right join
  select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos right join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;
 
 
