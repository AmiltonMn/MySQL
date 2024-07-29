
use Floricultura;

drop table Compra;
drop table Cliente;
drop table Endereco;
drop table Produto;

create table Endereco(
IDEndereco int not null primary key auto_increment,
Estado char(2),
Cidade varchar(255),
Rua varchar(255),
Numero int  
) default charset utf8mb4;

create table Cliente(
IDCliente int not null primary key auto_increment,
IDEndereco int,
foreign key (IDEndereco) references Endereco(IDEndereco),
RG varchar(9),
Nome varchar(255),
Telefone varchar(11)
) default charset utf8mb4;

create table Produto(
IDProduto int not null primary key auto_increment,
Nome varchar(255),
Tipo varchar(255),
Preco float,
Quantidade int
) default charset utf8mb4;

create table Compra(
IDCompra int not null primary key auto_increment,
foreign key (IDCliente) references Cliente(IDCliente),
foreign key (IDProduto) references Produto(IDProduto),
IDCliente int,
IDProduto int,
Data datetime, 
ValorTotal float
) default charset utf8mb4;

create table CompraProduto(
IDCompraProduto int not null primary key auto_increment,
IDProduto int,
IDCompra int,
foreign key (IDProduto) references Produto(IDProduto),
Quantidade int
) default charset utf8mb4;


show tables;
