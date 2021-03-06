/*drop database if exists pickfantasy;*/
create database pickfantasy;
use pickfantasy;



CREATE TABLE USUARIO (
    user_id int PRIMARY KEY auto_increment,
    user_name varchar(20),
    nome varchar(100),
    email varchar(50),
    senha varchar(50),
    acertoGlobal int(100),
    acertoPartida int(10)
);

CREATE TABLE PARTIDA (
    id_partida int PRIMARY KEY auto_increment,
    time1 varchar(20),
    time2 varchar(20),
    ganhador varchar(20),
    placarTime2 int(10),
    placarTime1 int(10),
    data date,
    FK_CAMPEONATO_id_campeonato int,
    FK_TIME_id_time int,
    FK_TIME_id_time2 int
);

CREATE TABLE CAMPEONATO (
    id_campeonato int PRIMARY KEY auto_increment,
    nome varchar(50)
);

CREATE TABLE TIME (
    id_time int PRIMARY KEY auto_increment,
    nome varchar(20),
    nacionalidade varchar(20)
);

CREATE TABLE ETAPA (
    id_etapa int PRIMARY KEY auto_increment,
    nome_etapa varchar(20)
);

CREATE TABLE RANKING (
    data_inicio date,
    data_fim date,
    id_temporada int PRIMARY KEY auto_increment
);

CREATE TABLE JOGADOR (
    id_jogador int PRIMARY KEY auto_increment,
    nome_completo varchar(100),
    apelido varchar(20),
    nacionalidade varchar(20),
    FK_TIME_id_time int
);

CREATE TABLE ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR (
    id_escolha int PRIMARY KEY auto_increment,
    melhor_jogador varchar(50),
    pior_jogador varchar(50),
    melhor_time varchar(50),
    pior_time varchar(50),
    FK_TIME_id_time int,
    FK_USUARIO_user_id int,
    FK_JOGADOR_id_jogador int
);

CREATE TABLE APOSTA_USUARIO_PARTIDA_TIME (
    FK_USUARIO_user_id int,
    FK_PARTIDA_id_partida int,
    FK_TIME_id_time int
);

CREATE TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C (
    FK_ETAPA_id_etapa int,
    FK_CAMPEONATO_id_campeonato int,
    FK_ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR_id_escolha int
);

CREATE TABLE USUARIO_RANKING (
    FK_USUARIO_user_id int,
    FK_RANKING_id_temporada int
);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_1
    FOREIGN KEY (FK_CAMPEONATO_id_campeonato)
    REFERENCES CAMPEONATO (id_campeonato)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
   
    
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_3
    FOREIGN KEY (FK_TIME_id_time2)
    REFERENCES TIME (id_time);
    
 
ALTER TABLE JOGADOR ADD CONSTRAINT FK_JOGADOR_1
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR_1
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR_2
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR ADD CONSTRAINT FK_ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR_3
    FOREIGN KEY (FK_JOGADOR_id_jogador)
    REFERENCES JOGADOR (id_jogador);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C_0
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C_1
    FOREIGN KEY (FK_CAMPEONATO_id_campeonato)
    REFERENCES CAMPEONATO (id_campeonato)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C ADD CONSTRAINT FK_ETAPA_CAMPEONATO_ETAPA_CAMPEONATO_ESCOLHE_E_C_2
    FOREIGN KEY (FK_ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR_id_escolha)
    REFERENCES ESCOLHE_E_C_ESCOLHE_TIME_USUARIO_JOGADOR (id_escolha)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE USUARIO_RANKING ADD CONSTRAINT FK_USUARIO_RANKING_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE USUARIO_RANKING ADD CONSTRAINT FK_USUARIO_RANKING_1
    FOREIGN KEY (FK_RANKING_id_temporada)
    REFERENCES RANKING (id_temporada)
    ON DELETE RESTRICT ON UPDATE RESTRICT;


INSERT INTO USUARIO(user_name, nome, email, senha, acertoPartida)
VALUES 	('rodolfinho', 'Rodolfo', 'rodolfo@gmail.com', '*****', 150),
	('nichol', 'Nicholas', 'nichol@gmail.com', '********',300),
	('rogertt', 'Roger', 'rogerfo@gmail.com', '*********',540),
	('dinho', 'Denis', 'dendinho@gmail.com', '****',100),
	('beterraba', 'José', 'beterrabajose@gmail.com', '**********',250);
    
INSERT INTO CAMPEONATO(nome)
VALUES 	('CBLOl 2017'),
	('ESL PRO LEAGUE 2017');
    
INSERT INTO TIME(nome, nacionalidade)
VALUES 	('Keyd Stars', 'Norte-Americana'),
	('PaiN Gaming', 'Brasileira'),
	('Team oNe', 'Brasileira'),
	('INTZ', 'Brasileira'),
	('Kabum','Norte-Americana'),
	('AlienTech','Norte-Americana'),
	('CNB', 'Brasileira'),
	('Red Cannids','Brasileira'),
	('g3nerationX','Brasileira');
    
INSERT INTO JOGADOR(nome_completo,apelido,nacionalidade,FK_TIME_id_time)
VALUES	('Roberto da Siva', 'Polenta', 'Brasileira',4),
	('Juan Souza','JunZ','Brasileira',4),
	('Denis Voté','Dent','Francesa',4),
	('Nikole','Koler','Brasileira',4),
	('Oswald','Andrade','Brasileira',4),
	('Mateus','Manossos','Alemã',3),
	('Marcos Henrique','mFlechas','Brasileira',3),
	('Felipe Gonçalves','BrTT','Brasileira',3),
	('Gabriel','20Mata70Correr','Brasileira',3);
    
INSERT INTO RANKING(data_inicio, data_fim)
VALUES 	( '2017/06/01', '2017/06/30'), ('2017/07/01', '2017/07/31');

INSERT INTO PARTIDA(placarTime1,placarTime2,ganhador,data,FK_CAMPEONATO_id_campeonato, FK_TIME_id_time,FK_TIME_id_time2)
VALUES	('3','2',1,'2017/05/18', 1, 8, 1),
	('4','1', 1,'2017/07/11', 1,1, 9),
	('3','2', 7,'2017/07/13', 1, 3, 7),
	('3','0', 4,'2017/08/18', 1, 4, 6),
	('3','2',2,'2017/09/18', 1, 2, 5);
    
INSERT into APOSTA_USUARIO_PARTIDA_TIME(FK_USUARIO_user_id,FK_PARTIDA_id_partida,FK_TIME_id_time)
VALUES(1,5,5),(2,2,2),(3,4,4);

insert into ETAPA (nome_etapa)
values('Fase de Grupos'),('Oitavas de Final'),('Quartas de Final'),
	('Semi Final'),('Final');
    
    


