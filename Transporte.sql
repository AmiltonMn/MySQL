Use Transporte;

drop table ArmazemLoja;
drop table Armazem;
drop table Viagem;
drop table EncomendaProduto;
drop table Encomenda;
drop table Loja;
drop table Caminhao;
drop table Produto;

create table Armazem(
	IDArmazem int not null primary key auto_increment,
    Endereco varchar(255) not null
) default charset utf8mb4;

create table Loja(
	IDLoja int not null primary key auto_increment,
    Endereco varchar(255) not null
) default charset utf8mb4;

create table ArmazemLoja(
	IDArmazemLoja int not null primary key auto_increment,
    IDArmazem int not null,
    IDLoja int not null,
    foreign key (IDArmazem) references Armazem(IDArmazem),
    foreign key (IDLoja) references Loja(IDLoja)
) default charset utf8mb4;

create table Encomenda(
	IDEncomenda int not null primary key auto_increment,
    IDLoja int not null,
    foreign key (IDLoja) references Loja(IDLoja)
) default charset utf8mb4;

create table Caminhao(
	IDCaminhao int not null primary key auto_increment,
    Capacidade int not null,
    NomeMotorista varchar(255) not null
) default charset utf8mb4;

create table Viagem(
	IDViagem int not null primary key auto_increment,
    IDEncomenda int not null,
    IDCaminhao int not null,
    foreign key (IDEncomenda) references Encomenda(IDEncomenda),
    foreign key (IDCaminhao) references Caminhao(IDCaminhao),
    Destino varchar(255) not null
) default charset utf8mb4;

create table Produto(
	IDProduto int not null primary key auto_increment, 
    Nome varchar(255),
    Descricao varchar(255),
    Preco float not null
) default charset utf8mb4;

create table EncomendaProduto(
	IDEncomendaProduto int not null primary key auto_increment,
    IDEncomenda int not null,
    IDProduto int not null,
    Qtd int not null,
    ValorTotal float not null,
	foreign key (IDEncomenda) references Encomenda(IDEncomenda),
    foreign key (IDProduto) references Produto(IDProduto)
) default charset utf8mb4;

