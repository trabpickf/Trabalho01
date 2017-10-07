/* Lógico_2: */

DROP DATABASE IF EXISTS pickfantasy_dtb;
CREATE DATABASE pickfantasy_dtb;
USE pickfantasy_dtb;


CREATE TABLE USUARIO (
    user_id int PRIMARY KEY AUTO_INCREMENT,
    user_name varchar(20),
    nome_usuario varchar(100),
    email varchar(50),
    senha varchar(50),
    FK_RANKING_id_temporada int
);

CREATE TABLE PARTIDA (
    id_partida int PRIMARY KEY AUTO_INCREMENT,
    time1 varchar(20),
    time2 varchar(20),
    placar varchar(10),
    ganhador varchar(20),
    FK_CAMPEONATO_id_campeonato int 
);

CREATE TABLE CAMPEONATO (
    id_campeonato int PRIMARY KEY AUTO_INCREMENT,
    nome_campeonato varchar(50)
);

CREATE TABLE EQUIPE (
    id_equipe int PRIMARY KEY AUTO_INCREMENT,
    nome_equipe varchar(20),
    nacionalidade_equipe varchar(20)
);

CREATE TABLE ETAPA (
    id_etapa int PRIMARY KEY AUTO_INCREMENT,
    nome_etapaq varchar(20)
);

CREATE TABLE PONTUACAO (
    id_pontos_user int PRIMARY KEY AUTO_INCREMENT,
    pontos_global int,
    pontos_temporada int
);

CREATE TABLE JOGADOR (
    id_jogador int PRIMARY KEY AUTO_INCREMENT,
    nome_jogador varchar(100),
    apelido varchar(20),
    nacionalidade varchar(20),
    FK_EQUIPE_id_equipe int
);

CREATE TABLE TEMPORADA_RANKING (
    id_temporada int PRIMARY KEY AUTO_INCREMENT,
    data_inicio date,
    data_fim date,
    nome_temporada varchar(20),
    usuario varchar(50),
    pontos int(10)
);

CREATE TABLE APOSTA (
    FK_USUARIO_user_id int,
    FK_PARTIDA_id_partida int
);

CREATE TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR (
    FK_USUARIO_user_id int,
    FK_ETAPA_id_etapa int,
    FK_JOGADOR_id_jogador int
);

CREATE TABLE ETAPA_CAMPEONATO (
    FK_ETAPA_id_etapa int,
    FK_CAMPEONATO_id_campeonato int
);

CREATE TABLE GERA (
    FK_PARTIDA_id_partida int,
    FK_PONTUACAO_id_pontos_user int
);

CREATE TABLE ACUMULA (
    FK_USUARIO_user_id int,
    FK_PONTUACAO_id_pontos_user int
);

CREATE TABLE PARTIDA_TIME (
    FK_EQUIPE_id_equipe int,
    FK_PARTIDA_id_partida int
);

CREATE TABLE PARTIDA_TIME_2 (
    FK_EQUIPE_id_equipe int,
    FK_PARTIDA_id_partida int
);
 
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_1
    FOREIGN KEY (FK_RANKING_id_temporada)
    REFERENCES TEMPORADA_RANKING (id_temporada);
 
ALTER TABLE PARTIDA ADD CONSTRAINT FK_PARTIDA_1
    FOREIGN KEY (FK_CAMPEONATO_id_campeonato)
    REFERENCES CAMPEONATO (id_campeonato);
 
ALTER TABLE JOGADOR ADD CONSTRAINT FK_JOGADOR_1
    FOREIGN KEY (FK_EQUIPE_id_equipe)
    REFERENCES EQUIPE (id_equipe);
 
ALTER TABLE APOSTA ADD CONSTRAINT FK_APOSTA_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE APOSTA ADD CONSTRAINT FK_APOSTA_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_1
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa);
 
ALTER TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR ADD CONSTRAINT FK_ESCOLHE_USUARIO_ETAPA_JOGADOR_2
    FOREIGN KEY (FK_JOGADOR_id_jogador)
    REFERENCES JOGADOR (id_jogador);
 
ALTER TABLE ETAPA_CAMPEONATO ADD CONSTRAINT FK_ETAPA_CAMPEONATO_0
    FOREIGN KEY (FK_ETAPA_id_etapa)
    REFERENCES ETAPA (id_etapa);
 
ALTER TABLE ETAPA_CAMPEONATO ADD CONSTRAINT FK_ETAPA_CAMPEONATO_1
    FOREIGN KEY (FK_CAMPEONATO_id_campeonato)
    REFERENCES CAMPEONATO (id_campeonato);
 
ALTER TABLE GERA ADD CONSTRAINT FK_GERA_0
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);
 
ALTER TABLE GERA ADD CONSTRAINT FK_GERA_1
    FOREIGN KEY (FK_PONTUACAO_id_pontos_user)
    REFERENCES PONTUACAO (id_pontos_user);
 
ALTER TABLE ACUMULA ADD CONSTRAINT FK_ACUMULA_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ACUMULA ADD CONSTRAINT FK_ACUMULA_1
    FOREIGN KEY (FK_PONTUACAO_id_pontos_user)
    REFERENCES PONTUACAO (id_pontos_user);
 
ALTER TABLE PARTIDA_TIME ADD CONSTRAINT FK_PARTIDA_TIME_0
    FOREIGN KEY (FK_EQUIPE_id_equipe)
    REFERENCES EQUIPE (id_equipe);
 
ALTER TABLE PARTIDA_TIME ADD CONSTRAINT FK_PARTIDA_TIME_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);
 
ALTER TABLE PARTIDA_TIME_2 ADD CONSTRAINT FK_PARTIDA_TIME_2_0
    FOREIGN KEY (FK_EQUIPE_id_equipe)
    REFERENCES EQUIPE (id_equipe);
 
ALTER TABLE PARTIDA_TIME_2 ADD CONSTRAINT FK_PARTIDA_TIME_2_1
    FOREIGN KEY (FK_PARTIDA_id_partida)
    REFERENCES PARTIDA (id_partida);