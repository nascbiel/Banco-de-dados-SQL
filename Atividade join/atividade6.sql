create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
categoria varchar(255) not null,
informacoes varchar(255) not null,
primary key(id)
);

create table tb_curso(
id bigint(5) auto_increment,
nome varchar(255) not null,
sobre varchar(255) not null,
preco int not null,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (categoria,informacoes) VALUES ("CURSOS MOBILE","Crie aplicativos móveis para as principais plataformas, smartphones e tablets. Aprenda frameworks multiplataforma como Flutter e React Native e saiba como criar apps nativas para Android e iOS.");
INSERT INTO tb_categoria (categoria,informacoes) VALUES ("CURSOS DE PROGRAMAÇÃO","Programe nas principais linguagens e plataformas. Explore plataformas como Python, Node.JS, PHP, Java, e .NET a fundo, além de muito conteúdo em outras linguagens como GoLang, Clojure, C/C++, VB ou Cobol.");
INSERT INTO tb_categoria (categoria,informacoes) VALUES ("CURSOS DE FRONT-END","Desenvolva sites e webapps com HTML, CSS e JavaScript. Aprenda as boas práticas e as últimas versões do JavaScript. Estude ferramentas e frameworks do mercado como React, Angular, Webpack, jQuery e mais.");
INSERT INTO tb_categoria (categoria,informacoes) VALUES ("CURSOS DE MARKETING DIGITAL","Marketing digital vai muito além dos links patrocinados e canais como Google Ads, Facebook e Instagram. As estratégias mais recentes, como o Inbound Marketing, além de novas tendências como o Growth Hacking.");
INSERT INTO tb_categoria (categoria,informacoes) VALUES ("CURSOS DE DATA SCIENCE","Aprenda a trabalhar com dados. Do Excel ao Python e Machine Learning. Use os principais bancos SQL do mercado e faça análises de dados com business intelligence. Pandas, SciKitLearn, Jupyter e mais.");

select * from tb_categoria;

INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("Fundamentos para seu planejamento on-line","parte dos cursos de Marketing em Marketing Digital",30,4);
INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("Manipule e consulte dados","parte dos cursos de SQL e Banco de Dados em Data Science",60,5);
INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("Trabalhando com Function components","parte dos cursos de Multiplataforma em Mobile",20,1);
INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("A primeira página da Web","parte dos cursos de HTML e CSS em Front-end",80,3);
INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("Os primeiros programas com Javascript e HTML","parte dos cursos de Lógica em Programação",90,2);
INSERT INTO tb_curso (nome,sobre,preco,categoria_id) VALUES ("pratique com desenhos, animações e um jogo","parte dos cursos de Lógica em Programação",20,2);

select * from tb_curso where preco > 50;

select * from tb_curso where preco >=3 and tb_curso.preco <= 60;

select * from tb_curso where nome like "%J%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.categoria ="CURSOS DE PROGRAMAÇÃO";





