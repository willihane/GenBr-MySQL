#2) Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

use RegistroEscolar;
create table Estudantes(
NomeCompleto varchar(255) not null,
Idade int not null,
Turma varchar(255) not null,
Media float,
Responsavel varchar(255),
Primary key(NomeCompleto)

);
