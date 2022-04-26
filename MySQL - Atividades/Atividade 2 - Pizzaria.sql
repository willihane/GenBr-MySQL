#------------------- Atividade 2 ---------------------
#Crie um banco de dados para um serviço de uma Pizzaria.
#O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. 
#O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
#O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.

create database db_pizzaria_legal;
drop database db_pizzaria_legal;

use db_pizzaria_legal;

#1)Crie a tabela tb_categorias e determine pelo menos 2 atributos,
#além da Chave Primária, relevantes para classificar as pizzas.

create table tb_categorias(
id bigint auto_increment,
TipoS varchar(255),
BordaR varchar(255),
primary key(id) 
);

select * from tb_categorias;
select*from tb_pizzas;

#2)Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
#3) Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.

create table tb_pizzas(
Preco double not null,
Sabor varchar (255) not null,
Tamanho varchar(255) not null,
BordaS varchar(255) not null,
Obs varchar(1000),
Sabor_id bigint,
primary key (Sabor),
foreign key (Sabor_id) references tb_categorias (id)
);

#4) Insira 5 registros na tabela tb_categorias.

insert into tb_categorias (TipoS, BordaR) values ("Doce","Sim");
insert into tb_categorias (TipoS, BordaR) values ("Doce","Sim");
insert into tb_categorias (TipoS, BordaR) values ("Doce","Sim");
insert into tb_categorias (TipoS, BordaR) values ("Doce","Sim");
insert into tb_categorias (TipoS, BordaR) values ("Salgada","Não");
insert into tb_categorias (TipoS, BordaR) values ("Salgada","Não");
insert into tb_categorias (TipoS, BordaR) values ("Salgada","Não");
insert into tb_categorias (TipoS, BordaR) values ("Salgada","Não");

#5)Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (39.90,"Brigadeiro","M","Ninho","Sem granulado",1);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (65.90,"Frango c/ catupiry","G","Catupiry","Massa fina",8);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (35.99, "Prestigio","P","Coco","Capricha!",2);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (25.99,"Mussarela","PP","Chedar","Muito queijo!",5);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (35.99,"Morango c/ chocolate","P","Brigadeiro","Sem granulado",3);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (70.99,"Camarão","G","Apimentada","Com molho especial",6);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (34.99,"Banofe","P","Bem casado","Colocar canela",4);
insert into tb_pizzas (Preco, Sabor, Tamanho, BordaS, Obs, Sabor_id) values (55.99,"Calabresa","G","Cheddar","Sem cebola",7);

#6)Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.

select * from tb_pizzas where Preco > 45;

#7) Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.

select * from tb_pizzas where Preco >=50 and Preco <=100;

#8) Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.

select * from tb_pizzas where Sabor like "%M%";

#9) Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.

select * from tb_pizzas inner join tb_categorias on tb_pizzas.Sabor_id = tb_categorias.id;

#10) Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).

select * from tb_pizzas inner join tb_categorias on tb_pizzas.Sabor_id = tb_categorias.id where TipoS = "Doce";

