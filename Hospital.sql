Create database Hospital;

create table Endereco(
	IDEndereco int not null primary key auto_increment,
	Pais varchar(30),
	Estado varchar(255),
    Cidade varchar(255),
    Rua varchar(255),
    Numero int
) default charset utf8mb4;

create table Exame(
	IDExame int not null primary key auto_increment, 
    Nome varchar(255),
    Resultado varchar(255),
    Descricao varchar(255)
) default charset utf8mb4;

create table Medico(
	CRM varchar(255) not null primary key,
    Nome Varchar(255),
    Especialidade varchar(255)
) default charset utf8mb4;

create table Paciente(
	CodRegis int not null primary key,
    Endereco int, 
    foreign key (Endereco) references Endereco(IDEndereco),
    Nome varchar(255),
    DataNasc datetime
) default charset utf8mb4;

create table Atendimento(
	IDAtendimento int not null primary key auto_increment,
    IDPaciente int not null,
    IDExame int not null,
    CRM varchar(255),
    foreign key (IDPaciente) references Paciente(CodRegis),
    foreign key (CRM) references Medico(CRM),
    foreign key (IDExame) references Exame(IDExame)
) default charset utf8mb4;

create table Medicamento(
	IDMedicamento int not null primary key auto_increment,
    Nome varchar(255),
    Descricao varchar(255)
) default charset utf8mb4;

create table ConsultaMedicamento(
	IDConsultaMedicamento int not null primary key auto_increment,
    IDMedicamento int not null,
    IDConsulta int not null,
    foreign key (IDMedicamento) references Medicamento(IDMedicamento),
    foreign key (IDConsulta) references Medicamento(IDConsulta)
) default charset utf8mb4;