--Táblák és Adatok generálása!:--

CREATE TABLE nyomozo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nev TEXT,
    szuletesi_ev INTEGER,
    tapasztalat_ev INTEGER
);


CREATE TABLE szemely (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nev TEXT,
    eletkor INTEGER,
    magassag INTEGER,
    hajszin TEXT,
    szemszin TEXT,
    arulo BOOLEAN
);


CREATE TABLE kihallgatas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nyomozo_id INTEGER,
    szemely_id INTEGER,
    vallomas TEXT,
    FOREIGN KEY(nyomozo_id) REFERENCES nyomozo(id),
    FOREIGN KEY(szemely_id) REFERENCES szemely(id)
);


INSERT INTO nyomozo (nev, szuletesi_ev, tapasztalat_ev) VALUES
('Szabó Dénes', 1978, 18),
('Molnár Kata', 1988, 10),
('Farkas Zoltán', 1983, 14);


INSERT INTO szemely (nev, eletkor, magassag, hajszin, szemszin, arulo) VALUES
('Ádám', 31, 175, 'barna', 'kék', 0),
('Boglárka', 29, 162, 'vörös', 'zöld', 0),
('Csanád', 35, 180, 'fekete', 'barna', 1),
('Dorina', 26, 168, 'szőke', 'kék', 0),
('Ernő', 33, 182, 'barna', 'barna', 0),
('Fruzsina', 28, 160, 'fekete', 'zöld', 0),
('Gergely', 30, 178, 'szőke', 'barna', 0),
('Helga', 32, 170, 'barna', 'zöld', 0),
('Imre', 27, 185, 'barna', 'kék', 0),
('Jázmin', 34, 165, 'szőke', 'barna', 0);


INSERT INTO kihallgatas (nyomozo_id, szemely_id, vallomas) VALUES
(1, 1, 'Nem vettem észre semmi furcsát.'),
(1, 2, 'Csanád egyedül volt, mikor láttam.'),
(1, 3, 'Nem emlékszem a részletekre.'),
(2, 4, 'Ernő nagyon idegesnek tűnt.'),
(2, 5, 'Csanád viselkedése gyanús volt.'),
(2, 6, 'Ádám sokat beszélt a rendőrökkel.'),
(3, 7, 'Nem tudok semmit mondani.'),
(3, 8, 'Csanád túl sok kérdést tett fel.'),
(3, 9, 'Helga mindig a helyszínen volt, amikor történt valami.'),
(1, 10, 'Nem voltam a környéken aznap este.'),
(2, 3, 'Csanád mindent tagadott.'),
(3, 5, 'Fruzsina szerint Csanád közel volt az iratokhoz.');
