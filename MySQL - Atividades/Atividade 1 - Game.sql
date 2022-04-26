# ------ ATIVIDADE 1 ------
#Crie um banco de dados para um serviço de um Games Online. 
#O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
#O sistema trabalhará com as informações dos personagens do jogo.
#O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

create database db_generation_game_online;

use db_generation_game_online;

#1) Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária,
#relevantes para classificar os personagens do Game Online.

create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
Armas varchar(255),
Descricao varchar(700),
primary key(id)
);

#2) Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
#relevantes aos personagens do Game Online.
#3)Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
poder varchar(255) not null, 
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
foreign key(classe_id) references tb_classes(id)
);


#4) Insira 5 registros na tabela tb_classes.

insert into tb_classes (classe, Armas, Descricao) values ('mago(a/e)',"Magias",'Tem como características principais a Inteligência, que é usado para conjurar suas magias');
insert into tb_classes (classe, Armas, Descricao) values ('guerreiro(a/e)',"Socos",'São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe, Armas, Descricao) values ('elfo(a/e)',"Cristais",'Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestass' );
insert into tb_classes (classe, Armas, Descricao) values ('arqueiro(a/e)',"Arcos e flexas",'Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe, Armas, Descricao) values ('ninja',"Facas",'É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );

#5) Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira
#para criar a relação com a tabela tb_classes.

insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Aline","Sonolencia",3000,500,3);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Silvio","Socos de reclamação",300,2500,2);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Williane","Corte rápido",4500,2500,5);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Luiza","Poções elficas",3500,800,3);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Juliana","Inteligencia",4500,2500,1);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Gregory","Chatice",3000,1400,3);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Mayara","Gritos de flechas",3600,2500,4);
insert into tb_personagens (nome, poder, defesa, ataque, classe_id) values ("Sanny","Fofura extrema",5000,5000,1);

#6)Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

select * from tb_personagens where ataque > 2000;

#7)Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.

select * from tb_personagens where defesa <=2000 and defesa >=1000;

#8)Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.

select * from tb_personagens where nome like '%C%';

#9) Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

#10) Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
# onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id where tb_classes.id = 1;

