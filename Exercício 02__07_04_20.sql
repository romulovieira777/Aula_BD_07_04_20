create table regiao_romulo (
idRegiao int not null,
regiao varchar(100) not null
);

create table cliente_romulo (
 idCliente int not null primary key,
 nome varchar(100) not null,
 representante varchar(100) not null,
 telefone varchar(13) not null,
 celular varchar(13),
 email varchar(100) not null,
 endereco text not null,
 idRegiao int not null,
 constraint fkCliente_regiao foreign key (idRegiao)
references regiao_romulo (idRegiao)
);

create table entradas_romulo(
idEntrada int not null primary key,
valor double not null,
tipo character not null,
dataEntradas date not null,
observacao varchar(100),
idCliente int not null,
idRegiao int not null,
constraint fkEntr_Cliente foreign key (idCliente)
references cliente_romulo (idCliente),
constraint fkEntr_Regiao foreign key (idRegiao)
references regiao_romulo (idRegiao)
);

create table hitContatos_romulo (
idHistorico int not null primary key,
dtContato datetime not null,
infoContato text not null,
idCliente int not null,
idRegiao int not null,
constraint fkHist_Regiao foreign key (idRegiao)
references regiao_romulo (idRegiao),
constraint fkHist_Cliente foreign key (idCliente)
references cliente_romulo (idCliente)
);

create table fornecedor_romulo (
idFornecedor int not null primary key,
nome varchar(100) not null,
representante varchar(100) not null,
telefone varchar(13) not null,
celular varchar(13),
email varchar(100) not null,
endereco text not null
);

create table saidas_romulo (
idSaidas int not null primary key,
valor double not null,
dataSaida date not null,
tipo character not null,
observacao varchar(100),
idFornecedor int not null,
constraint fkSaidas_Fornecedor foreign key (idFornecedor)
references fornecedor_romulo (idFornecedor)
);
