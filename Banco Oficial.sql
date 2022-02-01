CREATE DATABASE PROJETO_TUCUMA;
USE PROJETO_TUCUMA;

CREATE TABLE RECLAMACOES(
ID VARCHAR(13) NOT NULL PRIMARY KEY,
DESTINO VARCHAR(50) NOT NULL,
RECLAMACAO VARCHAR(1000) NOT NULL,
CIDADE VARCHAR(30) NOT NULL,
BAIRRO VARCHAR(45) NOT NULL,
LOCALIDADE VARCHAR(50) NOT NULL,
PESSOA_ENVOLVIDA VARCHAR(50) NOT NULL,
PERGUNTA_SEGURANCA VARCHAR(140) NOT NULL,
RESPOSTA_SEGURANCA VARCHAR(50) NOT NULL
) DEFAULT CHARSET=utf8mb4;

SELECT * FROM RECLAMACOES;

CREATE TABLE SUGESTOES(
ID_SUGESTAO VARCHAR(13) NOT NULL PRIMARY KEY,
NOME VARCHAR(60), 
CIDADE VARCHAR(30),
SUGESTAO VARCHAR(1000)
)DEFAULT CHARSET=utf8mb4;


SELECT * FROM SUGESTOES;

CREATE TABLE JOGOS(
ID_JOGO TINYINT NOT NULL PRIMARY KEY,
NOME_JOGO VARCHAR (30) NOT NULL
)DEFAULT CHARSET=utf8mb4;

Insert into JOGOS (ID_JOGO, NOME_JOGO)
			VALUES('0', 'Quizz');

Insert into JOGOS (ID_JOGO, NOME_JOGO)
			VALUES('1', 'Advinhe os Sons');

SELECT * FROM JOGOS;


CREATE TABLE JOGADORES(
ID_JOGADOR VARCHAR(13) NOT NULL PRIMARY KEY,
ID_JOGO TINYINT NOT NULL,
CONSTRAINT FK_ID_JOGO FOREIGN KEY (ID_JOGO) REFERENCES JOGOS (ID_JOGO),
RECORDE_JOGADOR INT(5) NOT NULL,
NOME_JOGADOR VARCHAR (30) NOT NULL
)DEFAULT CHARSET=utf8mb4;


SELECT * FROM JOGADORES;