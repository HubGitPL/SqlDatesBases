USE oddawanie

INSERT INTO LUDZIE (PESEL, IMIE, NAZWISKO, DATA_URODZENIA, KRAJ_POCHODZENIA, PLEC)
VALUES
    ('92030456789', 'Joanna', 'Kowalska', '1992-03-04', 'Polska', 'K'),
    ('85060112345', 'Malgosia', 'Nowak', '1985-06-01', 'Polska', 'M'),
    ('92071767890', 'Aleksandra', 'Fydrych', '1992-07-17', 'Polska', 'K'),
	('90071298765', 'Katarzyna', 'Wójcik', '1990-07-12', 'Polska', 'K'),
    ('80021587654', 'Marek', 'D¹browski', '1980-02-15', 'Polska', 'M'),
    ('95052523456', 'Zofia', 'Zaj¹c', '1995-05-25', 'Polska', 'K'),
    ('87033034567', 'Piotr', 'Szymañski', '1987-03-30', 'Polska', 'M'),
    ('88041245678', 'Joanna', 'Lewandowska', '1988-04-12', 'Polska', 'K'),
    ('91060178901', 'Tomasz', 'Kaczmarek', '1991-06-01', 'Polska', 'M'),
    ('86071565432', 'Marta', 'Witkowska', '1986-07-15', 'Polska', 'K'),
    ('93020298765', 'Rafa³', 'Kowalczyk', '1993-02-02', 'Polska', 'M'),
    ('82050823456', 'Kinga', 'Zalewska', '1982-05-08', 'Polska', 'K'),
    ('89061134567', 'Bartosz', 'Michalski', '1989-06-11', 'Polska', 'M'),
	('78082954321', 'Krzysztof', 'Pawlak', '1978-08-29', 'Polska', 'M'),
    ('94070467890', 'Monika', 'Piotrowska', '1994-07-04', 'Polska', 'K'),
    ('76081754321', 'Kamil', 'Wroñski', '1976-08-17', 'Polska', 'M'),
    ('98092045678', 'Weronika', 'Klimek', '1998-09-20', 'Polska', 'K'),
    ('81010178901', 'Marcin', 'Olejnik', '1981-01-01', 'Polska', 'M'),
    ('96030365432', 'Natalia', 'Sikorska', '1996-03-03', 'Polska', 'K'),
    ('87041498765', 'Adam', 'Nowakowski', '1987-04-14', 'Polska', 'M');

INSERT INTO AUTORZY (PESEL)
VALUES
    ('92030456789'),
    ('85060112345'),
    ('90071298765'),
    ('80021587654'),
    ('95052523456'),
    ('87033034567'),
    ('92071767890'),
    ('78082954321'),
    ('88041245678'),
    ('91060178901'),
    ('86071565432'),
    ('93020298765'),
    ('82050823456'),
    ('89061134567'),
    ('94070467890'),
    ('76081754321'),
    ('98092045678'),
    ('81010178901'),
    ('96030365432'),
    ('87041498765');

INSERT INTO LUDZIE (PESEL, IMIE, NAZWISKO, DATA_URODZENIA, KRAJ_POCHODZENIA, PLEC)
VALUES
    ('12345678911', 'Mateusz', 'Halo', '1983-07-23', 'Polska', 'K'),
	('22345678911', 'Pracownik', 'Trawnik', '1983-07-23', 'Polska', 'K'),
	('32345678911', 'Zygfryd', 'Halo', '1983-07-23', 'Polska', 'K'),
	('42345678911', 'Programista', 'Wspanialy', '1983-07-23', 'Ukraina', 'M'),
	('52345678911', 'Zofia', 'Helmud', '1983-07-23', 'Francja', 'M'),
	('62345678911', 'Marcin', 'Waski', '1983-07-23', 'Polska', 'K'),
	('72345678911', 'Melchior', 'Odwazny', '1983-07-23', 'Polska', 'K'),
	('82345678911', 'Kacper', 'Werler', '1983-07-23', 'Polska', 'K'),
	('92345678911', 'Komiwojazer', 'Plecak', '1983-07-23', 'Kazachstan', 'K'),
	('10345678911', 'Serpentyna', 'Skuel', '1983-07-23', 'Polska', 'K')
   
INSERT INTO GATUNKI (ID_GATUNKU, NAZWA)
VALUES
    ('123132', 'Fantastyka'),
    ('529434', 'Klasyczna'),
    ('128304', 'Programowanie'),
    ('239843', 'Dramat'),
    ('123840', 'Romans'),
    ('193042', 'Naukowa'),
    ('995743', 'Sensacja'),
    ('231809', 'Biografia'),
    ('109232', 'Przygodowa'),
    ('102104', 'Horror'),
    ('811531', 'Fantasy'),
    ('112012', 'Historyczna'),
    ('908013', 'Informatyka'),
    ('913214', 'Literatura dzieciêca'),
    ('987015', 'Sztuka'),
    ('414216', 'Podrêcznik akademicki'),
    ('232017', 'Komedia'),
    ('123018', 'Krymina³'),
    ('905019', 'Filozofia'),
    ('302020', 'Biznes');

INSERT INTO ADRESY (KOD_POCZTOWY, MIEJSCOWOSC, ULICA, NUMER_DOMU, NUMER_LOKALU)
VALUES
    ('12-345', 'Warszawa', 'Krakowska', '123', '4'),
    ('45-678', 'Kraków', 'Gdañska', '456', '56'),
    ('78-901', 'Gdañsk', 'Lubelska', '789', '12'),
    ('23-456', 'Poznañ', 'Piotrkowska', '234', '78'),
    ('56-789', 'Wroc³aw', 'Warszawska', '567', '90'),
    ('89-012', '£ódŸ', 'Sienkiewicza', '890', '23'),
    ('34-567', 'Szczecin', 'Rynek', '345', '34'),
    ('67-890', 'Katowice', 'S³owackiego', '678', '56'),
    ('01-234', 'Kraków', 'Piastowska', '901', '78'),
    ('45-678', 'Gdynia', 'Lecha', '234', '90'),
    ('89-012', 'Warszawa', 'Mazowiecka', '567', '12'),
    ('12-345', 'Wroc³aw', 'D³uga', '890', '34'),
    ('56-789', 'Poznañ', 'Matejki', '123', '56'),
    ('23-456', 'Gdañsk', 'Koœciuszki', '456', '78'),
    ('67-890', '£ódŸ', 'Paderewskiego', '789', '90'),
    ('01-234', 'Szczecin', 'Mickiewicza', '234', '12'),
    ('34-567', 'Katowice', 'S³owiañska', '567', '34'),
    ('78-901', 'Kraków', 'Grunwaldzka', '890', '56'),
    ('45-678', 'Warszawa', 'Nowy Œwiat', '123', '78'),
    ('89-012', 'Gdynia', 'Sopot', '456', '90');
	
INSERT INTO KSIEGARNIE (NAZWA_KSIEGARNI, ID)
VALUES
    ('Ksia¿ki Wojtka, inc. 1', 1),
    ('Ksia¿ki Wojtka, inc. 2', 2),
    ('Ksia¿ki Wojtka, inc. 3', 3),
    ('Ksia¿ki Wojtka, inc. 4', 4),
    ('Ksia¿ki Wojtka, inc. 5', 5),
    ('Ksia¿ki Wojtka, inc. 6', 6),
    ('Ksia¿ki Wojtka, inc. 7', 7),
    ('Ksia¿ki Wojtka, inc. 8', 8),
    ('Ksia¿ki Wojtka, inc. 9', 9),
    ('Ksia¿ki Wojtka, inc. 10', 10);

INSERT INTO PRACOWNICY (DZIEÑ_ZATRUDNIENIA, PESEL, NAZWA_KSIEGARNI)
VALUES
    ('2022-01-13', '12345678911', 'Ksia¿ki Wojtka, inc. 1'),
	('2022-01-13', '22345678911', 'Ksia¿ki Wojtka, inc. 2'),
	('2022-01-13', '32345678911', 'Ksia¿ki Wojtka, inc. 3'),
	('2022-01-13', '42345678911', 'Ksia¿ki Wojtka, inc. 4'),
	('2022-01-13', '52345678911', 'Ksia¿ki Wojtka, inc. 5'),
	('2022-01-13', '62345678911', 'Ksia¿ki Wojtka, inc. 6'),
	('2022-01-13', '72345678911', 'Ksia¿ki Wojtka, inc. 7'),
	('2022-01-13', '82345678911', 'Ksia¿ki Wojtka, inc. 8'),
	('2022-01-13', '92345678911', 'Ksia¿ki Wojtka, inc. 9'),
	('2022-01-13', '10345678911', 'Ksia¿ki Wojtka, inc. 10')

INSERT INTO PARAGONY (DATA_WYSTAWIENIA, NAZWA_KSIEGARNI, NUMER_PRACOWNICZY)
VALUES
    ('2023-01-01 10:00:00', 'Ksia¿ki Wojtka, inc. 1', 1),
    ('2023-02-05 14:30:00', 'Ksia¿ki Wojtka, inc. 2', 2),
    ('2023-03-10 11:45:00', 'Ksia¿ki Wojtka, inc. 3', 3),
    ('2023-04-15 13:00:00', 'Ksia¿ki Wojtka, inc. 4', 4),
    ('2023-05-20 15:30:00', 'Ksia¿ki Wojtka, inc. 5', 5),
    ('2023-06-25 12:15:00', 'Ksia¿ki Wojtka, inc. 6', 6),
    ('2023-07-30 14:45:00', 'Ksia¿ki Wojtka, inc. 7', 7),
    ('2023-08-05 11:30:00', 'Ksia¿ki Wojtka, inc. 8', 8),
    ('2023-09-10 09:00:00', 'Ksia¿ki Wojtka, inc. 9', 9),
    ('2023-10-15 13:30:00', 'Ksia¿ki Wojtka, inc. 10', 10);

INSERT INTO WYDAWCY (NAZWA_PRZEDSIEBIORSTWA, STRONA_INTERNETOWA, ID)
VALUES
    ('Wydawnictwo ABC', 'http://www.wydawnictwoabc.com', 1),
    ('Nowoczesne Ksi¹¿ki', 'http://www.nowoczesneksiazki.pl', 2),
    ('Literackie Inspiracje', 'http://www.literackieinspiracje.com', 3),
    ('Wielka Czytelnia', 'http://www.wielkaczytelnia.com', 4),
    ('Podró¿nicze Przygody', 'http://www.podrozniczeprzygody.com', 5),
    ('Ksi¹¿ki dla Ciebie', 'http://www.ksiazkidlaciebie.pl', 6),
    ('Innowacyjne Wydawnictwo', 'http://www.innowacyjnewydawnictwo.com', 7),
    ('Fantastyczne Opowieœci', 'http://www.fantastyczneopowiesci.pl', 8),
    ('Ksiêgarnia Marzeñ', 'http://www.ksiegarniamarzen.pl', 9),
    ('Przygodowe Historie', 'http://www.przygodowehistorie.com', 10);

INSERT INTO KSIAZKI (NUMER_ISBN, TYTUL, ROK_WYDANIA, CENA_DETALICZNA, ID_AUTORA, ID_GATUNKU, NAZWA_PRZEDSIEBIORSTWA)
VALUES
    ('1234567890123', 'Tytu³ 1', '2020-01-01', 29.99, 1, '123132', 'Wydawnictwo ABC'),
    ('2345678901234', 'Tytu³ 2', '2019-05-15', 19.99, 2, '529434', 'Wydawnictwo ABC'),
    ('3456789012345', 'Tytu³ 3', '2022-11-30', 24.99, 3, '239843', 'Wydawnictwo ABC'),
    ('4567890123456', 'Tytu³ 4', '2021-08-22', 34.99, 4, '239843', 'Wydawnictwo ABC'),
    ('5678901234567', 'Tytu³ 5', '2023-04-10', 39.99, 5, '239843', 'Wydawnictwo ABC'),
    ('6789012345678', 'Tytu³ 6', '2020-12-05', 28.99, 6, '239843', 'Wielka Czytelnia'),
    ('7890123456789', 'Tytu³ 7', '2018-09-18', 22.99, 7, '239843', 'Wielka Czytelnia'),
    ('8901234567890', 'Tytu³ 8', '2022-02-28', 31.99, 8, '414216', 'Wielka Czytelnia'),
    ('9012345678901', 'Tytu³ 9', '2019-11-14', 27.99, 9, '414216', 'Wielka Czytelnia'),
    ('0123456789012', 'Tytu³ 10', '2023-07-01', 33.99, 10, '414216', 'Przygodowe Historie');

INSERT INTO POZYCJE (NUMER_POZYCJI, NUMER_PARAGONU, CENA_KOMERCYJNA, ILOSC, NUMER_ISBN)
VALUES
    ('001', 1, 25.99, 2, '1234567890123'),
    ('002', 1, 19.99, 3, '2345678901234'),
    ('001', 2, 32.99, 1, '3456789012345'),
    ('002', 2, 26.99, 4, '4567890123456'),
    ('001', 3, 38.99, 1, '5678901234567'),
    ('002', 3, 23.99, 2, '6789012345678'),
    ('001', 4, 29.99, 3, '7890123456789'),
    ('002', 4, 35.99, 1, '8901234567890'),
    ('001', 5, 24.99, 4, '9012345678901'),
    ('002', 5, 31.99, 2, '0123456789012');
