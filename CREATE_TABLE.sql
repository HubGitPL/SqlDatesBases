use oddawanie;

CREATE TABLE LUDZIE (
			PESEL CHAR(11) CHECK (LEN(PESEL) = 11 AND ISNUMERIC(PESEL) = 1) PRIMARY KEY,
			IMIE VARCHAR(50) CHECK (IMIE NOT LIKE '%[^a-zA-Z ]%' and IMIE LIKE '[A-Z]%') NOT NULL,
			NAZWISKO VARCHAR(50) CHECK (NAZWISKO NOT LIKE '%[^a-zA-Z ]%' and NAZWISKO LIKE '[A-Z]%') NOT NULL,
			DATA_URODZENIA DATE NOT NULL,
			KRAJ_POCHODZENIA VARCHAR(50) CHECK (KRAJ_POCHODZENIA NOT LIKE '%[^a-zA-Z ]%' and KRAJ_POCHODZENIA LIKE '[A-Z]%') NOT NULL,
			PLEC CHAR(1) CHECK (PLEC IN ('K', 'M'))
)

CREATE TABLE AUTORZY (
			ID_AUTORA INT IDENTITY(1,1) PRIMARY KEY,
			PESEL CHAR(11) REFERENCES LUDZIE(PESEL) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
)

CREATE TABLE GATUNKI(
		ID_GATUNKU CHAR(6) CHECK(ID_GATUNKU >=1 AND ID_GATUNKU <= 999999) PRIMARY KEY,
		NAZWA VARCHAR(30) NOT NULL,
		UNIQUE(NAZWA)
)

CREATE TABLE ADRESY(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	KOD_POCZTOWY CHAR(6) CHECK (KOD_POCZTOWY LIKE ('[0-9][0-9]-[0-9][0-9][0-9]')),
	MIEJSCOWOSC VARCHAR(50) NOT NULL,
	ULICA VARCHAR(50) CHECK (ULICA NOT LIKE '%[^a-zA-Z ]%' and ULICA LIKE '[A-Z]%') NOT NULL,
	NUMER_DOMU VARCHAR(4),
	NUMER_LOKALU VARCHAR(4) CHECK(ISNUMERIC(NUMER_LOKALU) = 1)
)

CREATE TABLE KSIEGARNIE(
		NAZWA_KSIEGARNI VARCHAR(30) CHECK (ISNUMERIC(RIGHT(NAZWA_KSIEGARNI, 1)) = 1 AND LEN(NAZWA_KSIEGARNI) > 0) PRIMARY KEY,
		ID INT REFERENCES ADRESY(ID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
)

CREATE TABLE PRACOWNICY (
		NUMER_PRACOWNICZY INT IDENTITY(1,1) PRIMARY KEY,
		DZIE�_ZATRUDNIENIA DATE,
		PESEL CHAR(11) REFERENCES LUDZIE(PESEL) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
		NAZWA_KSIEGARNI VARCHAR(30) REFERENCES KSIEGARNIE(NAZWA_KSIEGARNI) NOT NULL
)

CREATE TABLE PARAGONY(
		NUMER_PARAGONU INT IDENTITY(1,1) PRIMARY KEY,
		DATA_WYSTAWIENIA DATETIME NOT NULL,
		NAZWA_KSIEGARNI VARCHAR(30) REFERENCES KSIEGARNIE(NAZWA_KSIEGARNI) 
				ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
		NUMER_PRACOWNICZY INT REFERENCES PRACOWNICY(NUMER_PRACOWNICZY) NOT NULL
)

CREATE TABLE WYDAWCY(
		NAZWA_PRZEDSIEBIORSTWA VARCHAR(30) PRIMARY KEY,
		STRONA_INTERNETOWA VARCHAR(80) CHECK(LEN(STRONA_INTERNETOWA) > 10) NOT NULL,
		ID INT REFERENCES ADRESY(ID) ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE KSIAZKI(
		NUMER_ISBN CHAR(15) CHECK(ISNUMERIC(NUMER_ISBN)=1) PRIMARY KEY,
		TYTUL VARCHAR(30) NOT NULL,
		ROK_WYDANIA DATE,
		CENA_DETALICZNA DECIMAL(10,2) NOT NULL,
		ID_AUTORA INT REFERENCES AUTORZY(ID_AUTORA)
				ON UPDATE CASCADE ON DELETE CASCADE NOT NULL,
		ID_GATUNKU CHAR(6) REFERENCES GATUNKI(ID_GATUNKU)
				ON UPDATE CASCADE ON DELETE CASCADE NOT NULL, 
		NAZWA_PRZEDSIEBIORSTWA VARCHAR(30) REFERENCES WYDAWCY(NAZWA_PRZEDSIEBIORSTWA)
				ON UPDATE CASCADE ON DELETE CASCADE NOT NULL
)

CREATE TABLE POZYCJE(
		NUMER_POZYCJI VARCHAR(3) NOT NULL,
		NUMER_PARAGONU INT NOT NULL,
		CENA_KOMERCYJNA DECIMAL(10,2) NOT NULL,
		ILOSC INT,
		NUMER_ISBN CHAR(15) NOT NULL,
		FOREIGN KEY(NUMER_PARAGONU) REFERENCES PARAGONY(NUMER_PARAGONU),
		FOREIGN KEY(NUMER_ISBN) REFERENCES KSIAZKI(NUMER_ISBN),
		PRIMARY KEY(NUMER_POZYCJI, NUMER_PARAGONU),
		CONSTRAINT ograniczenieNR1 FOREIGN KEY (NUMER_PARAGONU) REFERENCES PARAGONY(NUMER_PARAGONU)
				ON UPDATE CASCADE ON DELETE CASCADE,
		CONSTRAINT ograniczenieNR2 FOREIGN KEY (NUMER_ISBN) REFERENCES KSIAZKI(NUMER_ISBN)
)







