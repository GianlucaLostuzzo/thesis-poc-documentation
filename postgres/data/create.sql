create type Settori as enum 
('Agricoltura e allevamento',
'Ambiente e tutela del territorio',
'Amministrazione, finanza e controllo di impresa',
'Artigianato artistico',
'Attività commerciale',
'Audiovisivi e spettacolo',
'Beni culturali',
'Chimica',
'Commerciale e marketing',
'Comunicazione e giornalismo',
'Edilizia e urbanistica',
'Educazione e formazione',
'Forze armate e sicurezza',
'Gestione risorse umane',
'Grafica ed editoria',
'Grande distribuzione',
'Industria agroalimentare',
'Informatica ed elettronica',
'Metalmeccanica',
'Moda e abbigliamento',
'Non profit',
'Pubblica amministrazione',
'Pubblicità',
'Ristorazione e alimentazione',
'Servizi finanziari e assicurativi',
'Servizi sanitari',
'Servizi sociali',
'Sport',
'Telecomunicazioni',
'Trasporti',
'Turismo, ospitalità e tempo libero');

create type StatoRichieste as enum
('Pendente', 'Accettata', 'Declinata')

create type Livelli as enum
('Base', 'Intermedio', 'Avanzato');

create type Tipologie as enum
('Webinar', 'E-learning', 'Tradizionale');

create type StatiCorsi as enum
('Attivo', 'Annullato', 'Concluso');

create table Province
(
    Regione char(80),
    Nome char(80),
    Codice char(2) primary key
);

create table Comuni
(
	Nome char(80),
    Provincia char(2) references Province(Codice),
	Codice char(6) primary key,
	CAP char(5)
);

create table Aziende
(
    idAzienda serial primary key,
    RagioneSociale varchar(255),
    PIVA char(11),
    CF char(16),
    Mail varchar(80),
    Telefono char(10),
    Settore Settori not null,
    PersonaFisica bool,
    unique(PIVA)
);

create table Utenti
(
    idUtente serial primary key,
    Nome char(80),
    Cognome char(80),
    DataNascita date,
    CF char(16),
    Mail varchar(80),
    Telefono varchar(10),
    LavoraPer char(11) references Aziende(PIVA),
    unique(CF)
);

create table Residenze
(
    id serial primary key,
    Persona int references Utenti(idUtente),
    Comune char(6) references Comuni(Codice),
    Via varchar(255),
    unique(Persona, Comune, Via)
);

create table Sedi
(
    idSede serial primary key,
    Azienda int references Aziende(idAzienda),
    Comune char(6) references Comuni(Codice),
    Via varchar(255),
    unique(Azienda, Comune, Via)
);

create table Corsi
(
    idCorso serial primary key,
    Nome varchar(80),
    Erogatore varchar(80),
    Livello Livelli not null,
    Tipo Tipologie not null,
    DataInizio date,
    DataFine date,
    Durata int,
    Costo int,
    URL varchar(255),
    Stato StatiCorsi not null,
    unique(Nome, Erogatore),
    check (not DataInizio > DataFine)
);

create table Iscrizioni
(
    idIscrizione serial primary key,
    Corso int references Corsi(idCorso),
    Persona int references Utenti(idUtente),
    Stato StatoRichieste not null,
    unique(Corso, Persona)
);
