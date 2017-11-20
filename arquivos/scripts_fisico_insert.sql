DROP DATABASE IF EXISTS pickfantasy;
CREATE DATABASE pickfantasy;
USE pickfantasy;

CREATE TABLE USUARIO (
    user_id int PRIMARY KEY,
    user_name varchar(20),
    nome varchar(100),
    email varchar(50),
    senha varchar(50),
    pontos int
);

CREATE TABLE PARTIDA (
    id_partida int PRIMARY KEY,
    placar varchar(10),
    ganhador varchar(20),
    data date,
    FK_CAMPEONATOS_id_campeonato int,
    FK_TIME_id_time int,
    FK_TIME_id_time2 int
);

CREATE TABLE CAMPEONATOS (
    id_campeonato int PRIMARY KEY,
    nome varchar(50)
);

CREATE TABLE TIME (
    id_time int PRIMARY KEY,
    nome varchar(20),
    nacionalidade varchar(20)
);

CREATE TABLE ETAPA (
    id_etapa int PRIMARY KEY,
    nome varchar(20)
);

CREATE TABLE JOGADOR (
    id_jogador int PRIMARY KEY,
    nome varchar(100),
    apelido varchar(20),
    nacionalidade varchar(20),
    FK_TIME_id_time int
);

CREATE TABLE RANKING_TEMPORADA (
    id_temporada int PRIMARY KEY,
    data_inicio date,
    data_fim date
);

CREATE TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR (
    id_escolha int PRIMARY KEY,
    FK_USUARIO_user_id int,
    FK_TIME_id_time int,
    FK_TIME_id_pior_time int,
    FK_JOGADOR_id_jogador int,
    FK_JOGADOR_id_pior_jogador int
);

CREATE TABLE APOSTA_USUARIO_PARTIDA_TIME (
    FK_USUARIO_user_id int,
    FK_PARTIDA_id_partida int,
    FK_TIME_id_time int
);

CREATE TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C (
    FK_ETAPA_id_etapa int,
    FK_CAMPEONATOS_id_campeonato int,
    FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_id_escolha int
);

CREATE TABLE ALCANCOU (
    FK_USUARIO_user_id int,
    FK_RANKING_TEMPORADA_id_temporada int
);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_1
    FOREIGN KEY (FK_CAMPEONATOS_id_campeonato)
    REFERENCES CAMPEONATOS (id_campeonato);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);

ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_3
    FOREIGN KEY (FK_TIME_id_time2)
    REFERENCES TIME (id_time);
 
ALTER TABLE JOGADOR ADD CONSTRAINT FK_JOGADOR_1
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_1
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);

ALTER TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_3
    FOREIGN KEY (FK_TIME_id_pior_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_4
    FOREIGN KEY (FK_JOGADOR_id_jogador)
    REFERENCES JOGADOR (id_jogador);

ALTER TABLE ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_5
    FOREIGN KEY (FK_JOGADOR_id_pior_jogador)
    REFERENCES JOGADOR (id_jogador);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C_0
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa);
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C_1
    FOREIGN KEY (FK_CAMPEONATOS_id_campeonato)
    REFERENCES CAMPEONATOS (id_campeonato);
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C_2
    FOREIGN KEY (FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_id_escolha)
    REFERENCES ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR (id_escolha);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_1
    FOREIGN KEY (FK_RANKING_TEMPORADA_id_temporada)
    REFERENCES RANKING_TEMPORADA (id_temporada);
   
   
USE pickfantasy;


INSERT INTO USUARIO(user_id, user_name, nome, email, senha, pontos)
VALUES 	(1, 'rodolfinho', 'Rodolfo', 'rodolfo@gmail.com', '*****', 150),
	(2, 'nichol', 'Nicholas', 'nichol@gmail.com', '********',300),
	(3, 'rogertt', 'Roger', 'rogerfo@gmail.com', '*********',540),
	(4, 'dinho', 'Denis', 'dendinho@gmail.com', '****',100),
	(5, 'beterraba', 'José', 'beterrabajose@gmail.com', '**********',250);
    
INSERT INTO CAMPEONATOS(id_campeonato,nome)
VALUES 	(1,'CBLOl 2017'),
	(2,'ESL PRO LEAGUE 2017');
    
INSERT INTO TIME(id_time,nome, nacionalidade)
VALUES 	(1,'Keyd Stars', 'Norte-Americana'),
	(2,'PaiN Gaming', 'Brasileira'),
	(3,'Team oNe', 'Brasileira'),
	(4,'INTZ', 'Brasileira'),
	(5,'Kabum','Norte-Americana'),
	(6,'AlienTech','Norte-Americana'),
	(7,'CNB', 'Brasileira'),
	(8,'Red Cannids','Brasileira'),
	(9,'g3nerationX','Brasileira');
    
INSERT INTO JOGADOR(id_jogador,nome,apelido,nacionalidade,FK_TIME_id_time)
VALUES	(1,'Roberto da Siva', 'Polenta', 'Brasileira',4),
	(2,'Juan Souza','JunZ','Brasileira',4),
	(3,'Denis Voté','Dent','Francesa',4),
	(4,'Nikole','Koler','Brasileira',4),
	(5,'Oswald','Andrade','Brasileira',4),
	(6,'Mateus','Manossos','Alemã',3),
	(7,'Marcos Henrique','mFlechas','Brasileira',3),
	(8,'Felipe Gonçalves','BrTT','Brasileira',3),
	(9,'Gabriel','20Mata70Correr','Brasileira',3);
    
INSERT INTO RANKING_TEMPORADA(id_temporada, data_inicio, data_fim)
VALUES 	(1, '2017/06/01', '2017/06/30'), (2, '2017/07/01', '2017/07/31');

INSERT INTO PARTIDA(id_partida,placar,ganhador,data,FK_CAMPEONATOS_id_campeonato, FK_TIME_id_time2,FK_TIME_id_time)
VALUES	(1,'3x2',2,'2017/05/18', 1, 8, 1),
	(2, '4x1', 1,'2017/07/11', null,1, 9),
	(3, '3x2', 7,'2017/07/13', null, 3, 7),
	(4, '3x0', 4,'2017/08/18', null, 4, 6),
	(5, '3x2',2,'2017/09/18', 1, 2, 5);
    
INSERT into APOSTA_USUARIO_PARTIDA_TIME(FK_USUARIO_user_id,FK_PARTIDA_id_partida,FK_TIME_id_time)
VALUES(1,5,5);

insert into etapa (id_etapa,nome)
values(1,'Fase de Grupos'),(2,'Oitavas de Final'),(3,'Quartas de Final'),
	(4,'Semi Final'),(5,'Final');
    
    
insert into ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR (id_escolha, FK_USUARIO_user_id,
			FK_TIME_id_time ,FK_TIME_id_pior_time, FK_JOGADOR_id_jogador, FK_JOGADOR_id_pior_jogador)
values (1,2,2,7,8,2),(2,4,8,1,8,4);

insert into ETAPA_CAMPEONATO_ETAPA_CAMPEONATOS_ESCOLHE_E_C (FK_ETAPA_id_etapa ,FK_CAMPEONATOS_id_campeonato,
			FK_ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR_id_escolha)
values (3,1,1),(1,2,2);


insert into alcancou (FK_USUARIO_user_id ,FK_RANKING_TEMPORADA_id_temporada)
values(1,2),(2,2),(3,2),(4,2),(5,2);
