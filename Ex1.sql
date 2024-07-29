create database db_senai;

use db_senai;

show databases;

create table aluno(
IDAluno int not null primary key auto_increment, 
Nome varchar(255) not null
) default charset utf8mb4;

create table turma(
IDTurma int not null primary key auto_increment,
IDAluno int,
IDProfessor int,
foreign key (IDAluno) references aluno(IDAluno),
foreign key (IDProfessor) references Professor(IDProfessor)
) default charset utf8mb4;

create table professor(
IDProfessor int not null primary key auto_increment,
Nome varchar(255) not null
) default charset utf8mb4;

show tables;