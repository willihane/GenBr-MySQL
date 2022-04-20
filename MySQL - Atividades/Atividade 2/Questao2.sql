#2)Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.

use Ecommerce;
create table Produtos (
Codigo bigint auto_increment,
Descricao varchar(255) not null,
Preco double not null,
Cores char(255) not null,
Tamanhos varchar(255) not null,
primary key(Codigo)
);
