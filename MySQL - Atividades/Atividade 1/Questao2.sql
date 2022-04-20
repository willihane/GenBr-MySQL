#2) Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.

use RH;
create table Colaboradores(
Nome char(255) not null,
Idade int not null,
Cpf varchar(11) not null,
Funcao varchar(255) not null,
Salario float not null,
primary key (Cpf)
);
