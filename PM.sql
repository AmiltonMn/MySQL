use PM;

-- drop table Municao;
-- drop table Arma;
-- drop table Soldado;
-- drop table Limpeza;

create table Municao(
IDMunicao int not null primary key auto_increment,
Tipo varchar(255),
Calibre varchar(10)
) default charset utf8mb4;

create table Arma(
NumSerie int not null primary key auto_increment,
IDMunicao int,
foreign key (IDMunicao) references Municao(IDMunicao),
Tipo varchar(255),
Calibre varchar(10)
) default charset utf8mb4;

create table Soldado(
RM int not null primary key,
IDArma int,
foreign key (IDArma) references Arma(NumSerie),
Nome varchar(255),
DataNasc datetime
) default charset utf8mb4;

create table Limpeza(
IDLimpeza int not null primary key auto_increment,
IDSoldado int,
IDArma int,
foreign key (IDSoldado) references Soldado(RM),
foreign key (IDArma) references Arma(NumSerie),
DataLimp datetime
) default charset utf8mb4;

show tables;