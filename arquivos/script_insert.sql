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
VALUES
(1,5,5),
(2,2,2),
(3,4,4)
;


