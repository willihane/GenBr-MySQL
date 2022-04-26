#----------- Atividade 4 --------------

#Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
#O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais. 
#O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
#O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.

create database db_cidade_das_carnes;
use db_cidade_das_carnes;

#1)Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.

create table tb_categorias(
id bigint auto_increment,
Tipo varchar (255),
Estado varchar(255),
primary key (id)
);

#2) Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
#3)Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

create table tb_produtos(
Codigo bigint auto_increment,
Nome varchar(255) not null,
Descricao varchar(1000),
Peso varchar(255),
Preco float not null,
Ref bigint,
primary key(Codigo),
foreign key(Ref) references tb_categorias(id)
);

#4)Insira 5 registros na tabela tb_categorias.

insert into tb_categorias(Tipo, Estado) values ("Carnes vermelhas","Bovina");
insert into tb_categorias(Tipo, Estado) values ("Carnes vermelhas","Porco");
insert into tb_categorias(Tipo, Estado) values ("Carnes vermelhas","Cordeiro");
insert into tb_categorias(Tipo, Estado) values ("Carnes vermelhas","Carneiro");
insert into tb_categorias(Tipo, Estado) values ("Carnes Brancas","Aves");
insert into tb_categorias(Tipo, Estado) values ("Carnes Brancas","Peixes");
insert into tb_categorias(Tipo, Estado) values ("Carnes Brancas","Aves");

#5)Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_produtos (Nome, Preco, Ref) values ("Filé Mignon",150.99,4);
insert into tb_produtos (Nome, Preco, Ref) values ("Maminha",89.90,3);
insert into tb_produtos (Nome, Preco, Ref) values ("Acém",39.90,1);
insert into tb_produtos (Nome, Preco, Ref) values ("Costela",48.99,2);
insert into tb_produtos (Nome, Preco, Ref) values ("Coxa e sobrecoxa",28.99,5);
insert into tb_produtos (Nome, Preco, Ref) values ("Galinha inteira",35.89,5);
insert into tb_produtos (Nome, Preco, Ref) values ("Peru Familia",129.90,5);
insert into tb_produtos (Nome, Preco, Ref) values ("Azinhas",89.90,5);

#6)Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

select * from tb_produtos where Preco > 50.00;

#7)Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.

select * from tb_produtos where Preco >= 50.00 and Preco <= 150.00;

#8)Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.

select * from tb_produtos where Nome like "%C%";

#9)Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.

select * from  tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.Codigo; 

#10)Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).

select * from  tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.Codigo where Estado = "Aves"; 