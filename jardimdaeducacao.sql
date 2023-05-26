USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'dbjardim_da_educacao')
DROP DATABASE dbjardim_da_educacao
GO

CREATE DATABASE dbjardim_da_educacao
GO

USE dbjardim_da_educacao
GO

CREATE TABLE Responsavel(
   id       INT IDENTITY,
   nome     VARCHAR(100)  NULL,
   cpf      CHAR(11)     NULL,
   dataNasc DATE         NULL,
   telfone  VARCHAR(25)  NULL,
   email    VARCHAR(100) NULL, 
 
   PRIMARY KEY (id)
 
)

CREATE TABLE Aluno
( 
   id       INT IDENTITY,
   nome     VARCHAR(100) NOT NULL,
   dataNasc DATE         NOT NULL,
   email    VARCHAR(100) NULL, 
   Responsavel_id INT NOT NULL,

   PRIMARY KEY (id),
   FOREIGN KEY (Responsavel_id) REFERENCES Responsavel (id)
)

CREATE TABLE LOGIN(
 id       INT IDENTITY,
 LOGIN VARCHAR(50),
 senha varchar(50),
 Aluno_id INT NOT NULL,
 PRIMARY KEY (id),
  FOREIGN KEY (Aluno_id) REFERENCES Aluno (id)
)

