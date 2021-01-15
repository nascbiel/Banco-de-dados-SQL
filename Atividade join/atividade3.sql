create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment,
categoria varchar(255) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_produto(
id bigint(5) auto_increment,
nome_produto varchar(255) not null,
informacoes varchar(255) not null,
preco int not null,
quantidade int not null,
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (categoria,descricao) VALUES ("Medicamentos","Úlcera e Gastrite,Disfunção Erétil,Lubrificantes e Colírios, Osteoporose, Próstata, Antigripais ");
INSERT INTO tb_categoria (categoria,descricao) VALUES ("Genéricos","Diuréticos,Queda de Cabelo,Anticoncepcionais,Náuseas,Colírios,Antigases");
INSERT INTO tb_categoria (categoria,descricao) VALUES ("Beleza e Higiene","Protetor Solar, Hidratantes, Desodorantes, Limpeza de Pele, Shampoo, Pasta de Dentes");
INSERT INTO tb_categoria (categoria,descricao) VALUES ("Saúde e Bem-estar","Vitamina C, Complemento Alimentar, Descongestionante Nasal, Colágeno, Digestivo, Calmantes");
INSERT INTO tb_categoria (categoria,descricao) VALUES ("Mamãe e Bebê","Hidratante Infantil, Shampoo Infantil, Mamadeiras, Chupetas, Acessórios para Amamentação, Complemento Alimentar Infantil");

select * from tb_categoria;

INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Buscopan Composto 20 Drágeas","Para tratar os sintomas das cólicas de forma efetiva e eficaz, sem precisar recorrer a soluções caseiras, que não trazem resultados imediatos, a melhor alternativa é um remédio para cólica intestinal.",18,1,1);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Desodorante Rexona Aerosol Antitranspirante Men Active Dry 150ml","Desodorante Antitranspirante Rexona Men Aerosol Active Dry 150ml. Te protege o dia todo como nenhum outro. Exclusiva tecnologia MotionSense: proteção para te manter em movimento. 48 horas de proteção contra o odor e a transpiração.",15,1,3);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Fórmula Infantil Ninho Nutrigold 800g","Fórmula Infantil Ninho Nutrigold 800g",40,1,5);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Oscillococcinum 200k Boiron 30 doses","Oscillococcinum 200k Boiron 30 doses é um medicamento homeopático indicado como auxiliar na prevenção e no tratamento da gripe.",130,1,4);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Ivermectina 6mg Genérico Vitamedic 2 Comprimidos","Ivermectina 6mg Genérico Vitamedic 2 Comprimidos",26,2,2);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Analgésico Dorflex 36 Comprimidos","Analgésico Dorflex 36 Comprimidos possui ação analgésica e relaxante muscular. O início da ação ocorre a partir de 30 minutos. Dorflex é indicado no alívio da dor associada a contraturas musculares, incluindo dor de cabeça tensional.",15,1,4);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Lenços Umedecidos Pampers Aroma de Aloe Vera 192 Unidades","Conheça as toalhinhas umedecidas Pampers, agora com novos aromas! Elas são ideais para limpar seu bebê da cabeça aos pés. São feitas de um material resistente para evitar que se rasguem quando retiradas do pacotinho ou quando estiver limpando seu bebê.",40,1,5);
INSERT INTO tb_produto (nome_produto,informacoes,preco,quantidade,categoria_id) VALUES ("Hidratante Facial em Gel Nivea com Ácido Hialurônico e Pepino 100g","Com ácido hialurônico e pepino, o novo NIVEA Facial Hidratante em Gel é 100% livre de óleos, ideal para pele oleosa. 100x mais leve que um creme facial normal, ele prolonga o efeito da maquiagem na pele",60,2,3);

select * from tb_produto where preco > 50;

select * from tb_produto where preco >= 3 and tb_produto.preco <= 60;

select * from tb_produto where nome_produto like "%B%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.categoria ="Beleza e Higiene";









