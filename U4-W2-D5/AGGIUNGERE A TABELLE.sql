
-- INSERT ANAGRAFICA

INSERT INTO Anagrafica (cognome, nome, indirizzo, città , cod_fisc)

VALUES ('Rossi','Giuseppe','Via Monte Pelegrino', 'Palermo', '123456789'),
       ('Bianchi','Maria', 'Via Castelbuono','Catania','213456789'),
	   ('Conte','Donato', 'Via Erice','Messina','313456789'),
	   ('Florio','Paolo', 'Via Giuseppe Garibaldi','Siracusa','413456783'),
	   ('Russo', 'Luigi','Via Regina Margherita','Palermo','513636784'),
	   ('Bruno','Anna', 'Via Teatro Massimo','Ragusa','613656784'),
	   ('Caruso','Luigi', 'Via Roma','Siracusa','723656784'),
	   ('Caputo','Luigi', 'Via Crociferi','Trapani','813654784'),
	   ('Palumbo','Luigi','Via Plebiscito','Agrigento','915656784'),
	   ('Mele','Luigi', 'Via Etnea','Palermo','013656784');

--INSERT VIOLAZIONI

INSERT INTO Violazione (descrizione)

VALUES ('Sorpassava a sinistra in zona non consentita'),
       ('Superava il limite di velocita di 50 km/h'),
	   ('Parcheggio in doppia fila'),
	   ('Non portava la cintura di sicurezza'),
	   ('Non si fermava al semaforo rosso'),
	   ('Usava il cellulare alla guida'),
       ('Andava contromano'),
	   ('Non si fermava allo stop'),
	   ('Superava il limite di alcol nel sangue'),
	   ('Passava con il semaforo rosso quando il pedone stava attraversando');

 
-- INSERT VERBALE

INSERT INTO Verbale (id_violazione, id_anagrafica, data_Violazione, indirizzo_Violazione, nominativo_Agente, data_TrascrizioneVerbale, importo, decurtamento_Punti)

VALUES (1,1, '2009-01-02', 'Via Roma, Palermo', 'Agente_Gigi', '2024-01-04', 124.99, 4),
       (2,2, '2009-01-09', 'Via Margherita, Catania', 'Agente_Gigi', '2024-01-12', 239.00, 3),
	   (3,3,'2009-01-22', 'Via Fiore, Agrigento', 'Agente_DeLuca', '2024-01-24', 133.90, 1),
	   (4,4,'2009-02-01', 'Via Etnea,Catania', 'Agente_Guglielmo', '2024-02-03', 375.34, 2),
	   (5,5,'2009-02-06', 'Via Giuseppe Garibaldi, Siracusa', 'Agente_Gigi', '2024-02-09', 120.35, 3),
	   (6,6,'2009-02-10', 'Via Monte Pelegrino, Ragusa', 'Agente_Gigi', '2024-02-13', 400.30, 6),
       (7,7,'2009-03-14', 'Via Plebiscito, Palermo', 'Agente_Guglielmo', '2024-02-16', 319.98, 4),
	   (8,8,'2009-03-20', 'Via Erice, Palermo', 'Agente_Gigi', '2024-02-23', 250.80, 5),
	   (9,9,'2009-03-24', 'Via Crociferi, Trapani', 'Agente_DeLuca', '2024-02-26', 305.00, 7),
	   (10,10,'2009-04-25', 'Via Giulio Cesare, Siracusa', 'Agente_Guglielmo', '2024-02-29', 125.40, 3)