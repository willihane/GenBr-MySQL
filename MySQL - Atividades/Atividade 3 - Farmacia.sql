#------------- Atividade 3 ---------------
#Crie um banco de dados para um serviço de uma Farmácia. 
#O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. 
#O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
#O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

create database db_farmacia_bem_estar;
drop database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

#1)Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.

create table tb_categorias(
id bigint auto_increment,
Item varchar(255) not null,
TipoC varchar (255) not null,
primary key(id)
);

#2)Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
#3)Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

create table tb_produtos(
Codigo bigint auto_increment,
Nome varchar(255) not null,
Preco float not null,
Marca varchar(255),
Categoria bigint,
primary key(Codigo),
foreign key(Categoria) references tb_categorias(id)
);

#4)Insira 5 registros na tabela tb_categorias.

insert into tb_categorias(Item, TipoC) values ("Similar","Medicamentos");
insert into tb_categorias(Item, TipoC) values ("Generico","Medicamentos");
insert into tb_categorias(Item, TipoC) values ("Manipulado","Medicamentos");
insert into tb_categorias(Item, TipoC) values ("Fitoterápico","Medicamentos");
insert into tb_categorias(Item, TipoC) values ("Creme dental","Higiene");
insert into tb_categorias(Item, TipoC) values ("Protetor","Higiene");
insert into tb_categorias(Item, TipoC) values ("Kit","Higiene");
insert into tb_categorias(Item, TipoC) values ("Pacote","Higiene");

#5) Insira 8 registros na tabela tb_produtos,
#preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Dipirona",7.50,"stars",1);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Fluoxetina",20.90,"pfizer",2);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Colagenol",35.90,"jhonsons",3);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Oléo essencial",80.00,"Sint",4);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Escova dental eletrica",120.00,"Oral B",5);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Off familia",56.90,"OFF",6);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Pantene longos extremos",39.90,"pantene",7);
insert into tb_produtos(Nome, Preco, Marca, Categoria) values ("Fralda Calça XG",99.99,"Mommy poco",8);

#6) Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

select * from tb_produtos where Preco > 50.00;

#7) Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.

select * from tb_produtos where Preco >=5.00 and Preco <=60.00;

#8)Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

select * from tb_produtos where nome like "%C%";

#9) Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos
# com os dados da tabela tb_categorias.

select * from tb_categorias inner join tb_produtos on tb_produtos.Categoria = tb_categorias.id;

#10)Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da 
#tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).

select * from tb_categorias inner join tb_produtos on tb_produtos.Codigo = tb_categorias.id where TipoC = "Higiene";

