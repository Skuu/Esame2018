CREATE TABLE CSR (
    ID INT NOT NULL,
    citta VARCHAR(50),
    via VARCHAR(50),
    CAP VARCHAR(50),
    dataSpedizione DATE NOT NULL,
    dataRicezione DATE NOT NULL,
    CONSTRAINT ChiavePrimaria PRIMARY KEY (ID)
);
 
CREATE TABLE SO (
    ID INT NOT NULL,
    citta VARCHAR(50),
    via VARCHAR(50),
    CAP VARCHAR(50),
    dataSpedizione DATE NOT NULL,
    dataRicezione DATE NOT NULL,
    CSR INT,
    CONSTRAINT ChiavePrimaria PRIMARY KEY (ID),
    CONSTRAINT SOCSR FOREIGN KEY (ID) REFERENCES CSR (ID)
);
 
CREATE TABLE Clienti (
    ID INT NOT NULL,
    nome VARCHAR(50),
    cognome VARCHAR(50),
    telefono VARCHAR(10),
    email VARCHAR(50),
    username VARCHAR(50),
    password VARCHAR(50),
    citta VARCHAR(50),
    via VARCHAR(50),
    CAP VARCHAR(50),
    CONSTRAINT ChiavePrimaria PRIMARY KEY (ID)
);

CREATE TABLE Pacchi (
    ID INT NOT NULL,
    peso INT NOT NULL,
    tipo VARCHAR(50),
    dataSpedizione DATE NOT NULL,
    dataPrevista DATE NOT NULL,
    cliente INT,
    consegna VARCHAR(25),
    CONSTRAINT ChiavePrimaria PRIMARY KEY (ID),
    CONSTRAINT PacchiCliente FOREIGN KEY (cliente) REFERENCES Clienti (ID)
);
 

INSERT INTO Clienti(ID, nome, cognome, telefono, email, username, password, citta, via, CAP) VALUES
    (0, "Simone", "Sbardellati", "3336101617", "simonesbardellati@gmail.com", "sbardaway", "simone123", "San Polo", "Via del Sarto", "25125"),
    (1, "Marcello", "Merenda", "3473026124", "marcello.merenda@gmail.com", "aimbot333", "marcimarcello", "Castenedolo", "Via Fiume", "25014"),
    (2, "Marco", "Corsini", "3478968426", "marcocorsini@gmail.com", "marchetto", "marcmark", "Nave", "Via Nave", "25075"),
    (3, "Valentina", "Truppi", "3665439295", "valentinatruppia@gmail.com", "vale", "vale05", "Flero", "Via Francesco", "25020"),
    (4, "Matteo", "Gaspari", "3443890038", "matto.gaspari2005@gmail.com", "mattyj", "matteo1290", "Monticelli", "Via Alessandro", "25050"),
    (5, "Domenico", "Burdi", "3390269217", "burdidomenico@gmail.com", "dodo", "domenicoB", "Ome", "Via Provinciale", "25040"),
    (6, "Daniele", "Marchetti", "3663141681", "marchettidaniele@gmail.com", "djmarchet", "chapo", "Botticino", "Via Milano", "25082"),
    (7, "Denny", "Lungu", "3516442400", "dennylungu@gmail.com", "justin", "biber", "Leno", "Via Marciapiede", "25024"),
    (8, "Davide", "Zanoni", "3390269217", "zanoni.davide05@gmail.com", "davide", "davide05", "Botticino", "Via Lechi", "25082"),
    (9, "Federico", "Bresciani", "3200366654", "fedept@gmail.com", "fedept", "magnifico", "Leno", "Via Palestro", "25024");
 


INSERT INTO Pacchi(ID, peso, tipo, dataSpedizione, dataPrevista, cliente, consegna) VALUES
    (0, 5, "abbigliamento", '2023-10-25', '2023-10-29', 0, "avvenuta"),
    (1, 2, "abbigliamento", '2024-02-15', '2024-02-20', 1, "avvenuta"),
    (2, 5, "alimentari", '2024-02-20', '2024-02-24', 2, "non avvenuta"),
    (3, 10, "sport", '2022-05-03', '2022-05-23', 3, "avvenuta"),
    (4, 5, "motori",'2024-02-19', '2024-03-10', 4, "non avvenuta"),
    (5, 7, "elettronica",'2024-01-26', '2024-03-05', 7, "non avvenuta"),
    (6, 12, "motori",'2021-07-23', '2021-08-05', 3, "avvenuta"),
    (7, 18, "arredamento",'2024-01-07', '2024-01-10', 6, "avvenuta"),
    (8, 3, "alimentari",'2024-02-21', '2024-02-28', 9, "non avvenuta"),
    (9, 25, "elettronica",'2020-11-30', '2020-12-14', 2, "avvenuta"),
    (10, 70, "altro",'2024-02-18', '2024-03-22', 1, "non avvenuta"),
    (11, 4, "motori",'2024-02-16', '2024-03-13', 0, "non avvenuta"),
    (12, 3, "arredamento", '2023-05-12', '2023-05-16', 7, "avvenuta");
 

    
