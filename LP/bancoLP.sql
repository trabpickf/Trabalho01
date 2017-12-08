DROP DATABASE IF EXISTS pickfantasy;
CREATE DATABASE pickfantasy;
USE pickfantasy;

CREATE TABLE USUARIO (
    user_id int PRIMARY KEY auto_increment not null,
    user_name varchar(20) not null,
    nome varchar(100) not null,
    email varchar(50),
    senha varchar(50) not null,
    acertoGlobal int (100) default 0,
    acertoPartida int(10) default 0,
    tipo_user int(2) default 0,
    palavra_chave varchar(20) not null
);

CREATE TABLE PARTIDA (
    id_partida int PRIMARY KEY auto_increment,
    placar_time1 int (2) default 0,
    placar_time2 int(2) default 0,
    ganhador varchar(20),
    data date,
    FK_CAMPEONATOS_id_campeonato int,
    FK_TIME_id_time2 int,
    FK_TIME_id_time int
);

CREATE TABLE CAMPEONATOS (
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
    nome varchar(20)
);

CREATE TABLE JOGADOR (
    id_jogador int PRIMARY KEY auto_increment,
    nome varchar(100),
    apelido varchar(20),
    nacionalidade varchar(20),
    FK_TIME_id_time int
);

CREATE TABLE RANKING_TEMPORADA (
    id_temporada int PRIMARY KEY auto_increment,
    data_inicio date,
    data_fim date
);

CREATE TABLE APOSTA_USUARIO_PARTIDA_TIME (
    FK_USUARIO_user_id int,
    FK_PARTIDA_id_partida int,
    FK_TIME_id_time int
);

CREATE TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME (
    FK_USUARIO_user_id int,
    FK_ETAPA_id_etapa int,
    FK_JOGADOR_id_jogador int,
    FK_JOGADOR_id_pior_jogador int,
    FK_TIME_id_time int,
    FK_TIME_id_pior_time int
);

CREATE TABLE ETAPA_CAMPEONATO (
    FK_ETAPA_id_etapa int,
    FK_CAMPEONATOS_id_campeonato int
);

CREATE TABLE ALCANCOU (
    FK_USUARIO_user_id int,
    FK_RANKING_TEMPORADA_id_temporada int
);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_1
    FOREIGN KEY (FK_CAMPEONATOS_id_campeonato)
    REFERENCES CAMPEONATOS (id_campeonato);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_2
    FOREIGN KEY (FK_TIME_id_time2)
    REFERENCES TIME (id_time);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_3
    FOREIGN KEY ( FK_TIME_id_time)
    REFERENCES TIME ( id_time);
 
ALTER TABLE JOGADOR ADD CONSTRAINT FK_JOGADOR_1
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);
 
ALTER TABLE APOSTA_USUARIO_PARTIDA_TIME ADD CONSTRAINT FK_APOSTA_USUARIO_PARTIDA_TIME_2
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_1
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_2
    FOREIGN KEY (FK_JOGADOR_id_jogador)
    REFERENCES JOGADOR (id_jogador);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_3
    FOREIGN KEY (FK_JOGADOR_id_pior_jogador)
    REFERENCES JOGADOR (id_jogador);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_4
    FOREIGN KEY (FK_TIME_id_time)
    REFERENCES TIME (id_time);
    
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_TIME_5
    FOREIGN KEY (FK_TIME_id_pior_time)
    REFERENCES TIME (id_time);
 
ALTER TABLE ETAPA_CAMPEONATO ADD CONSTRAINT FK_ETAPA_CAMPEONATO_0
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa);
 
ALTER TABLE ETAPA_CAMPEONATO ADD CONSTRAINT FK_ETAPA_CAMPEONATO_1
    FOREIGN KEY (FK_CAMPEONATOS_id_campeonato)
    REFERENCES CAMPEONATOS (id_campeonato);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_1
    FOREIGN KEY (FK_RANKING_TEMPORADA_id_temporada)
    REFERENCES RANKING_TEMPORADA (id_temporada);
    

INSERT INTO USUARIO( user_name, nome, email, senha, tipo_user,palavra_chave)
VALUES ('ez', 'Ezequiel','eze@aaa.com','1', 1, 'ola');

INSERT INTO USUARIO( user_name, nome, email, senha, tipo_user,palavra_chave,acertoGlobal)
VALUES ('ezeq', 'Ezequiel','eze@sss.com','1', 1, 'ola', 15);

select *, acertoGlobal*10 as PontosGlobais from USUARIO where USUARIO.user_name = 'ezeq';


#SELECT * FROM ESCOLHE_E_C_ESCOLHE_USUARIO_TIME_JOGADOR;

SELECT user_name AS Nome, pontos FROM usuario WHERE pontos>100;

SELECT * FROM ALCANCOU;
SELECT * FROM APOSTA_USUARIO_PARTIDA_TIME;
SELECT * FROM RANKING_TEMPORADA;
SELECT * FROM JOGADOR;
SELECT * FROM USUARIO LIMIT 100;
select * from TIME;
select * from PARTIDA;
SELECT * FROM CAMPEONATOS;
SELECT * FROM ETAPA;