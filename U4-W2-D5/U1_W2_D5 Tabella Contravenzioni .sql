CREATE TABLE Anagrafica (

    id_anagrafica INT IDENTITY(1,1) PRIMARY KEY REFERENCES Anagrafica(id_anagrafica),
	
    cognome VARCHAR(50) not null,
    nome VARCHAR(50) not null,
	indirizzo VARCHAR(50) not null,
	città VARCHAR(50) not null,
	cod_fisc VARCHAR(16) not null UNIQUE,
);


CREATE TABLE Violazione (

    id_violazione INT IDENTITY(1,1)  PRIMARY KEY REFERENCES Violazione(id_violazione),

    descrizione VARCHAR(250) not null,

);

CREATE TABLE Verbale (

    id_verbale INT IDENTITY(1,1) PRIMARY KEY REFERENCES Verbale(id_verbale),
	id_violazione INT not null,
	id_anagrafica INT not null,

    data_violazione DATE not null UNIQUE,
    indirizzo_Violazione VARCHAR(50) not null,
	nominativo_Agente VARCHAR(50) not null,
	data_TrascrizioneVerbale DATE not null UNIQUE,
	importo DECIMAL (9,2) not null,
	decurtamento_Punti INT CHECK(decurtamento_punti >= 0 AND decurtamento_punti <= 20),

	CONSTRAINT FK_Anagrafica FOREIGN KEY(id_anagrafica) REFERENCES Anagrafica(id_anagrafica),
	CONSTRAINT FK_Violazione FOREIGN KEY(id_violazione) REFERENCES Violazione(id_Violazione),
);



