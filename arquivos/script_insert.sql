USE pickfantasy_dtb;


INSERT INTO USUARIO(user_name, nome_usuario, email, senha)
VALUES 	('rodolfinho', 'Rodolfo', 'rodolfo@gmail.com', '*****'),
	('nichol', 'Nicholas', 'nichol@gmail.com', '********'),
	('rogertt', 'Roger', 'rogerfo@gmail.com', '*********'),
	('dinho', 'Denis', 'dendinho@gmail.com', '****'),
	('beterraba', 'José', 'beterrabajose@gmail.com', '**********');
    

INSERT INTO CAMPEONATO(nome_campeonato)
VALUES 	('CBLOl 2017'),
	('ESL PRO LEAGUE 2017');

INSERT INTO PARTIDA(time1,time2,placar,ganhador)
VALUES	('Red Cannids', 'Keyd Stars','3x2','Red Cannids'), /* CBLOL */
	('Keyd Stars', 'g3nerationX', '4x1', 'Keyd Stars'), /* CSGO */
	('Team oNe', 'CNB', '3x2', 'CNB'), /* CSGO */
	('INTZ', 'AlienTech', '3x0', 'INTZ'), /* CSGO */
	('PaiN Gaming', 'Kabum', '3x2','PaiN Gaming');
    

INSERT INTO EQUIPE(nome_equipe, nacionalidade_equipe)
VALUES 	('Keyd Stars', 'Norte-Americana'), /* Possui time no Brasil */
	('PaiN Gaming', 'Brasileira'),
	('Team oNe', 'Brasileira'),
	('INTZ', 'Brasileira'),
	('Kabum','Norte-Americana'),
	('AlienTech','Norte-Americana'),
	('CNB', 'Brasileira'),
	('Red Cannids','Brasileira'),
	('g3nerationX','Brasileira');

INSERT INTO JOGADOR(nome_jogador,apelido,nacionalidade)
VALUES	('Roberto da Siva', 'Polenta', 'Brasileira'),
	('Juan Souza','JunZ','Brasileira'),
	('Denis Voté','Dent','Francesa'),
	('Nikole','Koler','Brasileira'),
	('Oswald','Andrade','Brasileira'),
	('Mateus','Manossos','Alemã'),
	('Marcos Henrique','mFlechas','Brasileira'),
	('Felipe Gonçalves','BrTT','Brasileira'),
	('Gabriel','20Mata70Correr','Brasileira');

/*
INSERT INTO ESCOLHE_USUARIO_ETAPA_JOGADOR(melhor_time, pior_time, melhor_jogador, pior_jogador)
VALUES	('Keyd Stars','CNB','BrTT','mFlechas'),
	('Red Cannids','Keyd Stars','Koler','Andrade'),
	('g3nerationX','INTZ','Manossos','20Mata70Correr'),
	('Team oNe','CNB','JunZ','20Mata70Correr'),
	('INTZ','g3nerationX','20Mata70Correr','Dent');
*/

INSERT INTO TEMPORADA_RANKING(nome_temporada, usuario, pontos, data_inicio, data_fim)
VALUES 	('CBLOL 2017','nichol',145, '2017-06-3','2017-07-5'),
	('ESL PRO LEAGUE 2017','dinho', 320, '2017-02-10','2017-03-15'),
	('CBLOL 2017','beterraba',190, '2017-06-3','2017-07-5'),
	('ESL PRO LEAGUE 2017','rodolfinho',380 ,'2017-02-10','2017-03-15'),
	('ESL PRO LEAGUE 2017','rogertt',350 ,'2017-02-10','2017-03-15');

INSERT INTO ETAPA(nome_etapaq)
VALUES 	('Grupos'),
	('Mata-Mata'),
	('Pré Temporada'),
	('Final');

INSERT INTO PONTUACAO(pontos_temporada, pontos_global)
VALUES 	(100, 145),
	(190, 320),
	(120, 190),
	(250, 380),
	(260, 350);
    
    
