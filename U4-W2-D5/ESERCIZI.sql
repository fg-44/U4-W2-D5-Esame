-- 01) Conteggio dei verbali trascritti,
--    SELECT COUNT(*) FROM Violazione;

-- 02) Conteggio dei verbali trascritti raggruppati per anagrafe,
       /*
        SELECT a.id_anagrafica, a.nome, a.cognome,
	    COUNT(v.id_violazione) as numero_Verbale 
		FROM Anagrafica a
		INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
	    GROUP BY a.id_anagrafica, a.nome, a.cognome ;
		*/
	   
-- 03) Conteggio dei verbali trascritti raggruppati per tipo di violazione,
       /*
		SELECT descrizione,
        COUNT(*) FROM Violazione
	    GROUP BY descrizione;
       */

-- 04) Totale dei punti decurtati per ogni anagrafe,
       /*
		SELECT id_anagrafica, 
		SUM(decurtamento_Punti)
        FROM Verbale
	    GROUP BY id_anagrafica;
       */

-- 05) Cognome, Nome, Data violazione, Indirizzo violazione, importo e punti decurtati per tutti gli anagrafici residenti a Palermo,
       /*        
		SELECT a.cognome, a.nome, v.data_violazione, v.indirizzo_violazione, v.importo, v.decurtamento_punti 
        FROM Anagrafica a
	    INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
		WHERE a.città = 'Palermo'
       */

-- 06) Cognome, Nome, Indirizzo, Data violazione, importo e punti decurtati per le violazioni fatte tra il febbraio 2009 e luglio 2009,
       
	   /*
	   SELECT a.cognome, a.nome, a.indirizzo, v.data_violazione, v.importo, v.decurtamento_punti
	   FROM Anagrafica a
	   INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
	   WHERE v.data_violazione BETWEEN '2009-02-01' AND '2009-07-31'
	   */

-- 07) Totale importo per ogni anagrafico, 
      /* 
	   SELECT a.cognome, a.nome, v.importo
	   FROM Anagrafica a
	   INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
	   GROUP BY a.cognome, a.nome, v.importo;
	  */

-- 08) Visualizzazione di tutti gli anagrafici residenti a Palermo,

      /*
	   SELECT cognome, nome, città
	   FROM Anagrafica 
	   WHERE città = 'Palermo'
	   GROUP BY cognome, nome, città;
	  */

-- 09) Query parametrica che visualizzi Data violazione, Importo e decurta mento punti relativi ad una certa data,
       /*
	   SELECT data_violazione, importo, decurtamento_punti
	   FROM Verbale
	   WHERE data_violazione= '2009-01-22'
	   GROUP BY data_violazione, importo, decurtamento_punti;
	   */
--10)  Conteggio delle violazioni contestate raggruppate per Nominativo dell'agente di Polizia,,	  
       /*
	   SELECT nominativo_Agente,
	   COUNT(id_verbale) AS numero_violazioni
	   FROM Verbale 
	   GROUP BY nominativo_Agente;
	   */

--11) Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino il decurtamento di 5 punti,
      
	  /*
	   SELECT a.cognome, a.nome, a.indirizzo, v.importo, v.decurtamento_punti
	   FROM Anagrafica a
	   INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
	   WHERE (v.decurtamento_punti > 5)
	   ORDER BY a.cognome, a.nome, a.indirizzo, v.importo, v.decurtamento_punti ASC;
	  */

--12) Cognome, Nome, Indirizzo, Data violazione, Importo e punti decurtati per tutte le violazioni che superino l'importo di 400 euro
      /*
	   SELECT a.cognome, a.nome, a.indirizzo, v.data_violazione, v.importo, v.decurtamento_punti
	   FROM Anagrafica a
	   INNER JOIN Verbale v ON a.id_anagrafica = v.id_anagrafica
	   WHERE (v.importo > 400)
	   ORDER BY a.cognome, a.nome, a.indirizzo, v.importo ASC, v.decurtamento_punti;
	  */