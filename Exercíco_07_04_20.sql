/*Criação da Tabela Departamento*/
create table departamento (
codDepart int auto_increment primary key,
nome varchar(40) not null
);

/*Inserindo Registros na Tabela Departamento*/
insert into departamento values (null, 'DEP - Romulo'), (null, 'CEP - Aluno');

create table chefeDepartamento (
codChefe int not null,
nomeChefe varchar(45) not null,
primary key (codChefe),
unique (nomeChefe)
);

alter table chefeDepartamento
modify codCHefe ....;
insert into chefeDepartamento values (1, 'Romulo'), (2, 'Ana'), (3, 'Evandro');

create table endereco (
codEndereco int not null auto_increment,
rua varchar(45),
bairro varchar(45) not null,
cidade varchar(45) not null,
estado char(2) not null,
cep char(8) not null,
complemento varchar(100),
primary key (codEndereco)
);

create table funcionario (
codFuncionario int not null,
nome varchar(45) not null,
cpf char(12) not null,
rg char(10),
matricula int not null, 
daEnt date not null,
daSai date,
daNascimento date not null,
salario decimal(13, 2) not null,
usuario varchar(20),
senha varchar(50),
idDepart int not null,
codEndereco int not null,
constraint pkFuncionario primary key (codFuncionario),
constraint fkDepartamento foreign key (codDepart)
references departamento (codDepart)
);

select * from funcionario;

describe funcionario;