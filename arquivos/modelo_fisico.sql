create database pickf;

use pickf;

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
    placar int,
    ganhador varchar(20),
    data int,
    FK_CAMPEONATOS_id_campeonato int,
    FK_TIME_id_time2 int,
    FK_TIME_id_time int
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

CREATE TABLE APOSTA (
    FK_USUARIO_user_id int,
    FK_PARTIDA_id_partida int,
    acerto bool
);

CREATE TABLE ESCOLHE_USUARIO_ETAPA_JOGADOR (
    FK_USUARIO_user_id int,
    FK_ETAPA_id_etapa int,
    FK_JOGADOR_id_jogador int
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
    FOREIGN KEY (FK_CAMPEONATOS_id_campeonato)
    REFERENCES CAMPEONATOS (id_campeonato);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_0
    FOREIGN KEY (FK_USUARIO_user_id)
    REFERENCES USUARIO (user_id);
 
ALTER TABLE ALCANCOU ADD CONSTRAINT FK_ALCANCOU_1
    FOREIGN KEY (FK_RANKING_TEMPORADA_id_temporada)
    REFERENCES RANKING_TEMPORADA (id_temporada);
