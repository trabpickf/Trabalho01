USE pickfantasy;


INSERT INTO USUARIO(user_name, nome, email, senha, acertoGlobal)
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
    
    

