USE `Library`;

INSERT INTO `language` (`id`, `name`) 
VALUES 
	(1, "POLSKI"),
    (2, "ANGIELSKI"),
    (3, "HISZPAŃSKI");
    
INSERT INTO `cover_type` (`id`, `name`)
VALUES
	(1, "MIĘKKA"),
    (2, "TWARDA"),
    (3, "TWARDA Z OBWOLUTĄ"),
    (4, "ZINTEGROWANA");
    
INSERT INTO `genre` (`id`, `name`)
VALUES 
	(1, "FANTASY"),
    (2, "SCIFI"),
    (3, "HORROR"),
    (4, "KRYMINAŁ"),
    (5, "BIOGRAFIA"),
    (6, "ANTYUTOPIA"),
    (7, "SPACE OPERA");
    
INSERT INTO `role` (`id`, `name`)
VALUES
	(1, "ADMIN"),
    (2, "MODERATOR"),
    (3, "BIBLIOTEKARZ");
    
INSERT INTO `account_status` (`id`, `name`)
VALUES
	(1, "NIEZWERYFIKOWANE"),
	(2, "ZWERYFIKOWANE"),
    (3, "ZABLOKOWANE");
    
INSERT INTO `rental_status` (`id`, `name`)
VALUES
	(1, "OCZEKUJĄCE"),
    (2, "W TRAKCIE"),
    (3, "ZAKOŃCZONE"),
    (4, "NIEZREALIZOWANE");
    
INSERT INTO `book_status` (`id`, `name`)
VALUES
	(1, "DOSTĘPNA"),
    (2, "WYPOŻYCZONA"),
    (3, "ZAREZERWOWANA");
    
INSERT INTO `country` (`id`, `name`)
VALUES
	(1, "USA"),
    (2, "Wielka Brytania"),
    (3, "Polska"),
    (4, "Ghana"),
    (5, "Hiszpania");

INSERT INTO `city` (`id`, `name`, `country_id`)
VALUES
	(1, "New York", 1),
    (2, "New York", 1),
    (3, "Londyn", 2),
    (4, "Boston", 1),
    (5, "Barcelona", 5),
    (6, "Poznań", 3),
    (7, "Warszawa", 3);

INSERT INTO `publisher` (`id`, `name`, `city_id`)
VALUES
	(1, "Gnome Press", 1),
    (2, "Doubleday", 2),
    (3, "Secker & Warburg", 3),
    (4, "Chilton Books", 4),
    (5, "Viking Press", 1),
    (6, "George Allen & Unwin", 3),
    (7, "Plaza & Janés", 5),
    (8, "Zysk i S-ka", 6),
    (9, "Rebis", 6),
    (10, "HarperCollins", 3),
    (11, "W.A.B.", 7),
    (12, "Muza SA", 7),
    (13, "Prószyński i S-ka", 7),
    (14, "Albatros", 7),
    (15, "Amazon Crossing", 1),
    (16, "superNOWA", 7);

INSERT INTO `author` (`id`, `firstname`, `lastname`, `description`, `birth_date`, `death_date`, `country_id`)
VALUES
	(1, "Isaac", "Asimov", "Amerykański pisarz i profesor biochemii pochodzenia rosyjsko-żydowskiego. Największą popularność zdobył jako autor science fiction.", STR_TO_DATE('2-01-1920', '%d-%m-%Y'), STR_TO_DATE('6-04-1992', '%d-%m-%Y'), 1),
    (2, "Frank", "Herbert", "Amerykański pisarz science fiction. Znany przede wszystkim jako autor wielokrotnie nagradzanej serii powieści Kroniki Diuny.", STR_TO_DATE('8-09-1920', '%d-%m-%Y'), STR_TO_DATE('11-02-1986', '%d-%m-%Y'), 1),
    (3, "George", "Orwell", NULL, STR_TO_DATE('25-06-1903', '%d-%m-%Y'), STR_TO_DATE('21-01-1950', '%d-%m-%Y'), 2),
    (4, "Stephen", "King", "Amerykański pisarz specjalizujący się w literaturze grozy.", STR_TO_DATE('21-10-1947', '%d-%m-%Y'), NULL, 1),
    (5, "J.R.R.", "Tolkien", "Brytyjski pisarz oraz profesor filologii klasycznej i literatury staroangielskiej na University of Oxford. Jako autor powieści Władca Pierścieni, której akcja rozgrywa się w mitycznym świecie Śródziemia, spopularyzował literaturę fantasy.", STR_TO_DATE('3-01-1892', '%d-%m-%Y'), STR_TO_DATE('2-10-1973', '%d-%m-%Y'), 2),
    (6, "Ousman", "Umar", NULL, STR_TO_DATE('12-08-1988', '%d-%m-%Y'), NULL, 4),
    (7, "Andrzej", "Sapkowski", "Polski pisarz fantasy, z wykształcenia ekonomista. Twórca postaci wiedźmina. Jest najczęściej po Lemie tłumaczonym polskim autorem fantastyki.", STR_TO_DATE('21-06-1948', '%d-%m-%Y'), NULL, 3),
	(8, "Brian", "Herbert", "Amerykański pisarz science-fiction, jako syn Franka Herberta i wspólnie z Kevinem J. Andersonem kontynuator sagi o Diunie.", STR_TO_DATE('29-06-1947', '%d-%m-%Y'), NULL, 1);
    
INSERT INTO `original_book` (`id`, `original_title`, `first_published`, `original_language_id`, `original_publisher_id`)
VALUES
	(1, "I, Robot", STR_TO_DATE('2-12-1950', '%d-%m-%Y'), 2, 1),
    (2, "The Caves of Steel", STR_TO_DATE('1-09-1953', '%d-%m-%Y'), 2, 1),
    (3, "The Naked Sun", STR_TO_DATE('1-01-1958', '%d-%m-%Y'), 2, 1),
    (4, "Prelude to Foundation", STR_TO_DATE('1-05-1988', '%d-%m-%Y'), 2, 2),
    (5, "Forward the Foundation", STR_TO_DATE('1-01-1993', '%d-%m-%Y'), 2, 2),
    (6, "Foundation", STR_TO_DATE('30-05-1951', '%d-%m-%Y'), 2, 1),
    (7, "Foundation and Empire", STR_TO_DATE('1-01-1952', '%d-%m-%Y'), 2, 1),
    (8, "1984", STR_TO_DATE('8-05-1949', '%d-%m-%Y'), 2, 3),
    (9, "Dune", STR_TO_DATE('1-05-1965', '%d-%m-%Y'), 2, 4),
    (10, "Dune Messiah", STR_TO_DATE('1-05-1969', '%d-%m-%Y'), 2, 4),
    (11, "Children of Dune", STR_TO_DATE('21-05-1976', '%d-%m-%Y'), 2, 4),
    (12, "The Shining", STR_TO_DATE('28-01-1977', '%d-%m-%Y'), 2, 2),
    (13, "It", STR_TO_DATE('28-01-1986', '%d-%m-%Y'), 2, 5),
    (14, "The Gunslinger", STR_TO_DATE('12-04-1982', '%d-%m-%Y'), 2, 5),
    (22, "The Drawing of the Three", STR_TO_DATE('1-05-1987', '%d-%m-%Y'), 2, 5),
    (15, "The Hobbit, or There and Back Again", STR_TO_DATE('21-07-1937', '%d-%m-%Y'), 2, 6),
    (16, "Viaje al país de los blancos", STR_TO_DATE('4-04-2019', '%d-%m-%Y'), 3, 7),
    (17, "Krew Elfów", STR_TO_DATE('1-01-1994', '%d-%m-%Y'), 1, 8),
    (18, "Czas Pogardy", STR_TO_DATE('1-01-1995', '%d-%m-%Y'), 1, 8),
    (19, "Chrzest Ognia", STR_TO_DATE('1-01-1996', '%d-%m-%Y'), 1, 8),
    (20, "Wieża Jaskółki", STR_TO_DATE('1-01-1997', '%d-%m-%Y'), 1, 8),
    (21, "Pani Jeziora", STR_TO_DATE('1-01-1998', '%d-%m-%Y'), 1, 8);
    
INSERT INTO `book_authorship` (`book_id`, `author_id`)
VALUES
	(1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 1),
    (7, 1),
    (8, 3),
    (9, 2),
	(9, 8),
    (10, 2),
    (10, 8),
    (11, 2),
    (11, 8),
    (12, 4),
    (13, 4),
    (14, 4),
    (22, 4),
    (15, 5),
    (16, 6),
    (17, 7),
    (18, 7),
    (19, 7),
    (20, 7),
    (21, 7);
    
INSERT INTO `book_genre` (`book_id`, `genre_id`)
VALUES
	(1, 2),
    (2, 2),
    (3, 2),
    (4, 2),
	(4, 7),
    (5, 2),
    (5, 7),
    (6, 2),
    (6, 7),
    (7, 2),
    (7, 7),
    (8, 2),
    (8, 6),
    (9, 1),
    (9, 2),
    (10, 1),
    (10, 2),
    (11, 1),
    (11, 2),
    (12, 3),
    (13, 3),
    (14, 3),
    (14, 1),
    (14, 2),
    (15, 1),
    (16, 5),
    (17, 1),
    (18, 1),
    (19, 1),
    (20, 1),
    (21, 1),
    (22, 3),
    (22, 1),
    (22, 2);
    
INSERT INTO `series` (`id`, `name`)
VALUES
	(1, "Roboty"),
    (2, "Fundacja"),
    (3, "Kroniki Diuny"),
    (4, "Mroczna Wieża"),
    (5, "Wiedźmin");
    
INSERT INTO `book_in_series` (`book_id`, `series_id`, `number`)
VALUES
	(1, 1, 0.1),
    (2, 1, 1),
    (3, 1, 2),
    (4, 2, 1),
    (5, 2, 2),
    (6, 2, 3),
    (7, 2, 4),
    (9, 3, 1),
    (10, 3, 2),
    (11, 3, 3),
    (14, 4, 1),
    (17, 5, 1),
    (18, 5, 2),
    (19, 5, 3),
    (20, 5, 4),
    (21, 5, 5),
    (22, 4, 2);
    
INSERT INTO `book_edition` (`id`, `idbn`, `title`, `published`, `pages`, `description`, `cover`, `copies_all`, `copies_available`, `book_id`, `language_id`, `cover_type_id`, `publisher_id`)
VALUES
	(1, '9788380625815', "Ja, Robot", STR_TO_DATE('12-04-2019', '%d-%m-%Y'), 240, NULL, NULL, 5, 5, 1, 1, 4, 9),
    (2, '9788381882484', "Pozytonowy detektyw", STR_TO_DATE('27-04-2021', '%d-%m-%Y'), 232, NULL, NULL, 5, 5, 2, 1, 4, 9),
    (3, '9788378182320', "Nagie słońce", STR_TO_DATE('27-04-2013', '%d-%m-%Y'), 216, NULL, NULL, 5, 5, 3, 1, 4, 9),
	(4, '8371209242313', "Preludium Fundacji", STR_TO_DATE('1-01-2005', '%d-%m-%Y'), 349, NULL, NULL, 5, 5, 4, 1, 4, 9),
	(5, '9780008117481', "Prelude to Foundation", STR_TO_DATE('12-11-2016', '%d-%m-%Y'), 416, NULL, NULL, 2, 2, 4, 2, 1, 10),
	(6, '8371209258432', "Narodziny Fundacji", STR_TO_DATE('01-01-2001', '%d-%m-%Y'), 325, NULL, NULL, 5, 4, 5, 1, 4, 9),
	(7, '9788381883405', "Fundacja", STR_TO_DATE('1-09-2021', '%d-%m-%Y'), 204, NULL, NULL, 5, 5, 6, 1, 1, 9),
	(8, '9788378182146', "Fundacja", STR_TO_DATE('20-11-2013', '%d-%m-%Y'), 254, NULL, NULL, 5, 5, 6, 1, 4, 9),
	(9, '9788381881647', "Fundacja i Imperium", STR_TO_DATE('18-08-2020', '%d-%m-%Y'), 220, NULL, NULL, 5, 5, 7, 1, 4, 9),
    (10, '9788328095298', "1984", STR_TO_DATE('12-01-2022', '%d-%m-%Y'), 336, NULL, NULL, 3, 1, 8, 1, 1, 11),
    (11, '9788328708419', "Rok 1984", STR_TO_DATE('27-02-2019', '%d-%m-%Y'), 360, NULL, NULL, 4, 4, 8, 1, 1, 12),
    (12, '9780451524935', "1984", STR_TO_DATE('14-01-2022', '%d-%m-%Y'), 372, NULL, NULL, 1, 1, 8, 2, 2, 3),
	(13, '9788381881388', "Diuna", STR_TO_DATE('12-10-2021', '%d-%m-%Y'), 784, NULL, NULL, 3, 3, 9, 1, 3, 9),
	(14, '9788373017252', "Mesjasz Diuny", STR_TO_DATE('15-05-2007', '%d-%m-%Y'), 272, NULL, NULL, 3, 3, 10, 1, 3, 9),
	(15, '9788381880947', "Dzieci Diuny", STR_TO_DATE('28-07-2020', '%d-%m-%Y'), 576, NULL, NULL, 3, 3, 11, 1, 1, 9),
	(16, '9788376488097', "Lśnienie", STR_TO_DATE('1-01-1997', '%d-%m-%Y'), 520, NULL, NULL, 7, 7, 12, 1, 1, 13),
	(17, '9788381257022', "To", STR_TO_DATE('14-08-2019', '%d-%m-%Y'), 1104, NULL, NULL, 3, 3, 13, 1, 1, 13),
	(18, '9788365781789', "To", STR_TO_DATE('30-08-2017', '%d-%m-%Y'), 1108, NULL, NULL, 1, 1, 13, 1, 2, 13),
    (19, '9788365781314', "Roland", STR_TO_DATE('19-07-2017', '%d-%m-%Y'), 320, NULL, NULL, 2, 2, 14, 1, 2, 14),
	(20, '9788379855841', "Powołanie trójki", STR_TO_DATE('10-07-2015', '%d-%m-%Y'), 448, NULL, NULL, 2, 2, 22, 1, 2, 14),
	(21, '9788381162647', "Hobbit", STR_TO_DATE('12-02-2018', '%d-%m-%Y'), 304, NULL, NULL, 5, 4, 15, 1, 3, 8),
	(22, '9781542030113', "North to Paradise", STR_TO_DATE('1-03-2022', '%d-%m-%Y'), 159, NULL, NULL, 1, 1, 16, 1, 1, 15),
	(23, '9788381162647', "Hobbit", STR_TO_DATE('12-02-2018', '%d-%m-%Y'), 304, NULL, NULL, 5, 5, 15, 1, 3, 8),
	(24, '9788375780659', "Krew elfów", STR_TO_DATE('28-10-2014', '%d-%m-%Y'), 340, NULL, NULL, 5, 5, 17, 1, 1, 16),
	(25, '9788375780666', "Czas pogardy", STR_TO_DATE('28-10-2014', '%d-%m-%Y'), 368, NULL, NULL, 5, 5, 18, 1, 1, 16),
	(26, '9788375780673', "Chrzest ognia", STR_TO_DATE('28-10-2014', '%d-%m-%Y'), 382, NULL, NULL, 5, 5, 19, 1, 1, 16),
	(27, '9788375780680', "Wieża Jaskółki", STR_TO_DATE('28-10-2014', '%d-%m-%Y'), 488, NULL, NULL, 5, 5, 20, 1, 1, 16),
	(28, '9788375780697', "Pani Jeziora", STR_TO_DATE('28-10-2014', '%d-%m-%Y'), 596, NULL, NULL, 5, 5, 21, 1, 1, 16);

INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (1, 838277188552, 1, 1);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (2, 973083871659, 1, 1);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (3, 093178775887, 1, 1);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (4, 391973487096, 1, 1);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (5, 521718256103, 1, 1);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (6, 955198620776, 1, 2);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (7, 888648253057, 1, 2);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (8, 637799320154, 1, 2);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (9, 695560426285, 1, 2);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (10, 964252622675, 1, 2);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (11, 091781339490, 1, 3);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (12, 316793655987, 1, 3);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (13, 789724217115, 1, 3);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (14, 422607198289, 1, 3);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (15, 136181785389, 1, 3);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (16, 989378756895, 1, 4);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (17, 184385427982, 1, 4);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (18, 040766315488, 1, 4);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (19, 223996107725, 1, 4);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (20, 538043226126, 3, 4);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (21, 628705640590, 1, 5);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (22, 871532470874, 1, 5);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (23, 026997648954, 1, 6);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (24, 562004519621, 1, 6);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (25, 507380269406, 1, 6);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (26, 818305075311, 2, 6);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (27, 552349527418, 1, 6);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (28, 794669973851, 1, 7);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (29, 605669343293, 1, 7);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (30, 469668089128, 1, 7);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (31, 926966109547, 1, 7);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (32, 375022216799, 1, 7);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (33, 428512294753, 1, 8);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (34, 002867353365, 1, 8);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (35, 316221059232, 1, 8);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (36, 404508544739, 1, 8);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (37, 176626364121, 1, 8);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (38, 743348254799, 1, 9);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (39, 017867698996, 1, 9);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (40, 632363094845, 1, 9);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (41, 838715002412, 1, 9);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (42, 457782018832, 1, 9);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (43, 917574149316, 1, 10);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (44, 460984409691, 2, 10);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (45, 931214977996, 2, 10);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (46, 231151232679, 1, 11);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (47, 044822911011, 1, 11);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (48, 789551042461, 1, 11);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (49, 912907683418, 1, 11);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (50, 766293439686, 1, 12);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (51, 769246572372, 1, 13);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (52, 687708335530, 1, 13);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (53, 869531178265, 1, 13);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (54, 497118050474, 1, 14);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (55, 183375564724, 1, 14);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (56, 682555236124, 1, 14);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (57, 335865618094, 1, 15);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (58, 599217085113, 1, 15);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (59, 223075143787, 1, 15);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (60, 667861631030, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (61, 029203101595, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (62, 890837722752, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (63, 092362685112, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (64, 351242822568, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (65, 362579794422, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (66, 326920661864, 1, 16);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (67, 808615037961, 1, 17);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (68, 192701085325, 1, 17);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (69, 057399404168, 1, 17);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (70, 387893389894, 1, 18);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (71, 405148898178, 1, 19);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (72, 782069631343, 1, 19);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (73, 157140721296, 1, 20);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (74, 657422712149, 1, 20);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (75, 679985207301, 1, 21);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (76, 847221600313, 2, 21);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (77, 660187214955, 1, 21);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (78, 588323911704, 1, 21);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (79, 354387767549, 1, 21);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (80, 495339442924, 1, 22);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (81, 076645974685, 1, 23);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (82, 719679925838, 1, 23);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (83, 695319743696, 1, 23);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (84, 679640038241, 1, 23);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (85, 719733807067, 1, 23);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (86, 525383648800, 1, 24);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (87, 825517376417, 1, 24);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (88, 287355427553, 1, 24);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (89, 477587720722, 1, 24);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (90, 741672265598, 1, 24);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (91, 692339527833, 1, 25);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (92, 664227553870, 1, 25);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (93, 978137356081, 1, 25);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (94, 188758295381, 1, 25);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (95, 083070039949, 1, 25);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (96, 024203350328, 1, 26);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (97, 813101717674, 1, 26);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (98, 989862815237, 1, 26);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (99, 872235605284, 3, 26);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (100, 342881742309, 1, 26);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (101, 332839583035, 1, 27);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (102, 624097820803, 1, 27);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (103, 523118283038, 1, 27);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (104, 486552426315, 1, 27);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (105, 063039438318, 1, 27);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (106, 861221546859, 1, 28);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (107, 405027486053, 1, 28);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (108, 485431750966, 1, 28);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (109, 751762063968, 1, 28);
INSERT INTO `book` (`id`, `barcode`, `book_status_id`, `book_edition_id`)
VALUES (110, 298345817607, 1, 28);

INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (1, 'ithil_riddermark8011222', '$2a$12$MQPDosPoofKzfAKNKpADdBvug.pnicLukVEo/EOqAxNGTnHzjwuGw', 'Zofia', 'Kozłowska', 'ithil_riddermark8011222Kozłowska621000059@onet.pl', '4847984813', 'Biała Podlaska', '20140', 'Kamienna', '7', NULL, STR_TO_DATE('13-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('19-08-2021 00:36:02', '%d-%m-%Y %H:%i:%s'), 3);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (2, 'hoarwell_ithil', '$2a$12$oiPZVDAxoJEjVPODPIm.WEfJegOxfgGgfItBlV/fctxUhTfvG/aJd', 'Elżbieta', 'Chmielewska', 'hoarwell_ithilChmielewska82776209@gmail.com', '4843272041', 'Biała Podlaska', '20828', 'Jana Kasprowicza', '1', NULL, STR_TO_DATE('01-12-2021', '%d-%m-%Y'), 0, STR_TO_DATE('02-02-2022 19:04:45', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (3, 'belfalas00401475', '$2a$12$XaJZaiPbivENWnjyRQWXFnKCpnQYpfhmy.qPHwAqNlmemTuX/WnxM', 'Wanda', 'Ostrowska', 'belfalas0040147513109@gmail.com', '4817057632', 'Biała Podlaska', '20650', 'Łąkowa', '41', NULL, STR_TO_DATE('15-05-2021', '%d-%m-%Y'), 0, STR_TO_DATE('26-02-2022 02:53:37', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (4, 'hobbiton377712', '$2a$12$C/lRulysdolkofEIR/rlRRueamKFfNAwOOywdWpXRjUf/OQPkHhP/', 'Artur', 'Szymański', 'hobbiton3777129260890@interia.pl', '4879443978', 'Lubartów', '20559', 'Mikołaja Kopernika', '89', NULL, STR_TO_DATE('10-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('11-03-2022 19:14:49', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (5, 'beorning_huorn', '$2a$12$jgJSyJNNPZZxcveAHLSvTaXaNNLVdVcFODIyjHapJbZiMCebhM.Q/', 'Piotr', 'Zawadzki', 'beorning_huornZawadzki943826@onet.pl', '4886897203', 'Biała Podlaska', '20635', 'Sosnowa', '20', NULL, STR_TO_DATE('20-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('20-02-2022 04:17:01', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (6, '015527smeagol', '$2a$12$FBdwPKETkCWIkYiTLcaSbwqBxOIfQpMh.QvTvQgKOYZuymAyegbV.', 'Sylwia', 'Wiśniewska', '015527smeagolWiśniewska2594@yahoo.com', '4880577319', 'Biała Podlaska', '20073', 'Krótka', '4', NULL, STR_TO_DATE('03-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('17-09-2021 01:58:28', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (7, 'glanduin_shire', '$2a$12$NPVIoiwQEi.Hijq/.BvMiwNfGdRwXdmDAKgtGTFeymmssGBMRmjBy', 'Waldemar', 'Mazurek', 'glanduin_shire470290286@interia.pl', '4883121045', 'Biała Podlaska', '20834', 'Krakowska', '86', NULL, STR_TO_DATE('08-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('20-10-2021 14:16:02', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (8, 'evendim_celebrant', '$2a$12$Ca/eBWWcPIRCEZ/OcjsLPBSodauabyS.XUOxLfsYWfWFlcZFVZgls', 'Irena', 'Rutkowska', 'evendim_celebrant865936@yahoo.com', '4869452391', 'Biała Podlaska', '20998', 'Królewska', '36', NULL, STR_TO_DATE('29-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('29-11-2021 22:13:34', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (9, 'beorn_evendim', '$2a$12$/lHRcmFApvQPwCsDRIwEgQTEFUXUKlsSqum/rAQaUCKFFGdLsEEaW', 'Edyta', 'Głowacka', 'Głowackabeorn_evendim8812629@o2.pl', '4847727212', 'Biała Podlaska', '20736', 'Krótka', '46', NULL, STR_TO_DATE('30-10-2021', '%d-%m-%Y'), 0, STR_TO_DATE('07-11-2021 10:04:39', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (10, '3174entwade', '$2a$12$UlCl.gfyzVP.Rgo.iqAshgIhOVTBSgOZgBMkdEOQpaRAksbQkCBQU', 'Kazimiera', 'Kucharska', 'Kazimiera20859829@onet.pl', '4851628181', 'Biała Podlaska', '20236', 'Akacjowa', '8', NULL, STR_TO_DATE('19-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('12-03-2022 18:28:09', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (11, '64585249pelennor', '$2a$12$f/PwgipBT.pX.zDlJCxVuahv./BWcOhfaOgVwReYStHZyQHiFiqpo', 'Piotr', 'Chmielewski', 'PiotrChmielewski43222314@onet.pl', '4804326857', 'Biała Podlaska', '20074', 'Brzozowa', '31', NULL, STR_TO_DATE('13-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('01-03-2022 15:56:16', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (12, 'eowyn_rivendell', '$2a$12$TsgPeFSWkmNPLWYaRlEe.FKgjZYKMBW/dzzriomVNKvegczCYDWpE', 'Natalia', 'Urbańska', 'eowyn_rivendell30110@gmail.com', '4843074201', 'Biała Podlaska', '20454', 'Janusza Korczaka', '8', NULL, STR_TO_DATE('22-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('30-01-2022 01:16:08', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (13, 'pippin772554', '$2a$12$XNEmP.stOQCaAtPqAriPhrqNhYXRapHugHvEyqlBIvYHpFaYJIsQz', 'Mirosław', 'Michalski', 'pippin7725548981825@onet.pl', '4854312681', 'Biała Podlaska', '20376', 'Jana Kilińskiego', '81', NULL, STR_TO_DATE('21-02-2022', '%d-%m-%Y'), 0, STR_TO_DATE('20-03-2022 19:15:44', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (14, '856734entwade', '$2a$12$vnBmSWkokGZUAzDbre/jWRhwNxq.aJDH.MfZPVeaAiZCVDYmkCRZC', 'Roman', 'Przybylski', '856734entwade330149785@onet.pl', '4836273270', 'Biała Podlaska', '20359', 'Kijowska', '2', NULL, STR_TO_DATE('24-05-2021', '%d-%m-%Y'), 0, STR_TO_DATE('17-06-2021 01:26:17', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (15, 'hoarwell_erebor51993303', '$2a$12$NWuLCIGXiMlLDVuCCeyX/HKBxkgzcgffFHgYUPIUMPmmUt/T.FDgv', 'Janusz', 'Kwiatkowski', 'hoarwell_erebor51993303Kwiatkowski85476@o2.pl', '4890607928', 'Biała Podlaska', '20266', 'Kolejowa', '2', NULL, STR_TO_DATE('02-09-2021', '%d-%m-%Y'), 0, STR_TO_DATE('08-12-2021 13:28:28', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (16, 'pipeweed_anduin8952151', '$2a$12$YoXasSMmoyreqWuodDgw.ioNsZcDNdGZpeZexiDMmnJtKE.zSg/lT', 'Agata', 'Maciejewska', 'pipeweed_anduin8952151Maciejewska5739@yahoo.com', '4835258227', 'Biała Podlaska', '20006', 'Akacjowa', '44', NULL, STR_TO_DATE('31-03-2021', '%d-%m-%Y'), 0, STR_TO_DATE('13-04-2021 08:59:03', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (17, 'celebrant3381', '$2a$12$brt/LXauRh.noEPlvKxOqtjBTYDkODiAUWhShDEce/BUwTHJsELae', 'Tadeusz', 'Adamski', 'Adamskicelebrant3381599555206@onet.pl', '4871048036', 'Biała Podlaska', '20172', 'Leśna', '24', NULL, STR_TO_DATE('06-11-2021', '%d-%m-%Y'), 0, STR_TO_DATE('16-01-2022 02:04:26', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (18, 'ithil_arnor', '$2a$12$qugkMsZoJASZCTgftmTlSvTvwGBOHuzqjbADjYCZuuOGqGb.NoxFP', 'Stefania', 'Głowacka', 'ithil_arnor528769@interia.pl', '4813892083', 'Hrubieszów', '20560', 'Parkowa', '26', NULL, STR_TO_DATE('19-06-2021', '%d-%m-%Y'), 0, STR_TO_DATE('15-09-2021 10:39:47', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (19, 'evendim_shadowfax', '$2a$12$crExIFMSdZIvZMtN.fnceAYodQgmL.kbZiiQIHGJQtnqfgUjzniKD', 'Michał', 'Szymczak', 'Szymczakevendim_shadowfax468074@o2.pl', '4838174283', 'Biała Podlaska', '20228', 'Jana Kilińskiego', '1', NULL, STR_TO_DATE('18-02-2022', '%d-%m-%Y'), 0, STR_TO_DATE('23-03-2022 05:58:43', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (20, 'shadowfax_hobbiton', '$2a$12$MOVcLJygQWwprbLClZqkfayJawsvuG/QYMvwvKKeftAxC.VpbNr.a', 'Władysław', 'Brzeziński', 'shadowfax_hobbiton14730317@o2.pl', '4839076040', 'Biała Podlaska', '20054', 'Krótka', '3', NULL, STR_TO_DATE('21-06-2021', '%d-%m-%Y'), 0, STR_TO_DATE('26-11-2021 19:53:45', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (21, '6449018rohirrim', '$2a$12$PXcFpSahDRwhZxHIQwsQIAGtmosVtrrlzmYgpPKziyrFwBvLYNOyW', 'Irena', 'Makowska', 'Irena785034@onet.pl', '4816003273', 'Biała Podlaska', '20974', 'Akacjowa', '9', NULL, STR_TO_DATE('21-10-2021', '%d-%m-%Y'), 0, STR_TO_DATE('15-12-2021 14:45:02', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (22, '6697aglarond', '$2a$12$XLasnIDIdEK/bihhBypODwugStqtUPfOaUukpXuOxAzDncAlYbBmG', 'Damian', 'Wilk', 'DamianWilk287474@onet.pl', '4892062021', 'Chełm', '20501', 'Krótka', '8', NULL, STR_TO_DATE('03-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('02-08-2021 15:55:46', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (23, '883842aglarond', '$2a$12$tcNLklfNgjowSjKkUeSGBLbjYhHBHz/ObcgqSWWXrXnUPjDxFHsjD', 'Monika', 'Głowacka', 'MonikaGłowacka80962@gmail.com', '4873588960', 'Biała Podlaska', '20529', 'Krupnicza', '92', NULL, STR_TO_DATE('20-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('28-01-2022 18:51:10', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (24, 'aragorn_dwalin', '$2a$12$vWpkYRUBYQEbbSzOUtwbLifyNWwgjRW/BvkwvNrUuBOTVbEmAOPsF', 'Alicja', 'Wieczorea', 'aragorn_dwalinWieczorea3165641@gmail.com', '4807248916', 'Biała Podlaska', '20954', 'Zielona', '63', '8', STR_TO_DATE('20-07-2021', '%d-%m-%Y'), 0, STR_TO_DATE('14-12-2021 21:57:29', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (25, 'belfalas_thorin', '$2a$12$GNNTfpcEthexTuPkFvpYXvHbEGYXmGq/DEJLmsSlmjW/zaaM.MGgn', 'Elżbieta', 'Adamska', 'ElżbietaAdamska056602@interia.pl', '4875778029', 'Biała Podlaska', '20133', 'Karmelicka', '85', NULL, STR_TO_DATE('09-06-2021', '%d-%m-%Y'), 0, STR_TO_DATE('09-06-2021 00:59:33', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (26, 'beorning_arnor', '$2a$12$mNXAHvzdmGjN/.RFdUjjpXPwCiOBklRKOwyisMTY.MWMKSCMDfxTC', 'Iwona', 'Kaczmarea', 'beorning_arnor320592@o2.pl', '4868831882', 'Biała Podlaska', '20195', 'Kamienna', '1', NULL, STR_TO_DATE('25-02-2022', '%d-%m-%Y'), 0, STR_TO_DATE('26-02-2022 14:01:13', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (27, 'mirkwood26525717', '$2a$12$CQxMATyZFMjYJdveDzAjKgtpuDZPHcDaEWnKsXlQTVdQFpKdDZYLl', 'Izabela', 'Czerwińska', 'mirkwood26525717Czerwińska657829@gmail.com', '4824459778', 'Biała Podlaska', '20456', 'Kijowska', '3', NULL, STR_TO_DATE('05-01-2022', '%d-%m-%Y'), 0, STR_TO_DATE('13-01-2022 04:33:47', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (28, '3695eregion', '$2a$12$eywCQbSVmdpwQwEDhxS.buRkbOzpSPHrzNGccLaatECJCcQyH.tpE', 'Stanisław', 'Michalski', '3695eregionMichalski648860776@yahoo.com', '4898327260', 'Biała Podlaska', '20667', 'Leśna', '38', NULL, STR_TO_DATE('14-12-2021', '%d-%m-%Y'), 0, STR_TO_DATE('17-02-2022 11:28:04', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (29, '397911742morannon', '$2a$12$FgOzLJvaRQYYwKgvJOYDkuJIDNGCwuegrRdQxwGAvSOExglRGSQBD', 'Wanda', 'Wysocka', '397911742morannonWysocka521140@interia.pl', '4889269025', 'Biała Podlaska', '20068', 'Krucza', '51', NULL, STR_TO_DATE('10-12-2021', '%d-%m-%Y'), 0, STR_TO_DATE('13-03-2022 06:14:37', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (30, 'rohan_wormtongue', '$2a$12$gRbpQZOOEsNyiUqNdnNpXVHVtIFhcJwGhQqtQt.ZqCuDnhiQdVVju', 'Karolina', 'Jakubowska', 'rohan_wormtongueJakubowska00345447@o2.pl', '4841338554', 'Biała Podlaska', '20013', 'Katowicka', '9', NULL, STR_TO_DATE('04-10-2021', '%d-%m-%Y'), 0, STR_TO_DATE('07-11-2021 12:25:08', '%d-%m-%Y %H:%i:%s'), 3);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (31, '3225205gamgee', '$2a$12$pZwMLpmqMwAgGX.tEKKsUg.dOvElWtJUrH.fLTVrSQpCcLrQWuKXq', 'Urszula', 'Kozłowska', 'UrszulaKozłowska1504@yahoo.com', '4838146459', 'Biała Podlaska', '20567', 'Brzozowa', '33', '9', STR_TO_DATE('22-02-2022', '%d-%m-%Y'), 0, STR_TO_DATE('07-03-2022 06:48:57', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (32, 'athelas_mirkwood', '$2a$12$pGZeCFTWnHPmQzQarlYCqCvLJqSPMBbYVwzumJgExKqioJyROyeLB', 'Monika', 'Sikorska', 'athelas_mirkwood4844@o2.pl', '4866065007', 'Biała Podlaska', '20317', 'Kamienna', '97', '7', STR_TO_DATE('28-01-2022', '%d-%m-%Y'), 0, STR_TO_DATE('31-01-2022 04:07:20', '%d-%m-%Y %H:%i:%s'), 1);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (33, 'wormtongue_sancho', '$2a$12$WpPvhEMuwfAYdVeJTKkxuibzqpRFltMWHTSZzOdwtmZVPnHdLd/oi', 'Wiesław', 'Pietrzak', 'wormtongue_sanchoPietrzak248876@o2.pl', '4887406391', 'Biała Podlaska', '20201', 'Leśna', '5', NULL, STR_TO_DATE('24-05-2021', '%d-%m-%Y'), 0, STR_TO_DATE('16-06-2021 20:17:33', '%d-%m-%Y %H:%i:%s'), 2);
INSERT INTO `account_details` (`id`, `login`, `password`, `firstname`, `lastname`, `email`, `phone`, `city`, `zipcode`, `street`, `house`, `flat`, `created`, `is_active`, `last_active`, `account_status_id`)
VALUES (34, '25641entwade', '$2a$12$calxOpAOvqVwGYZ.Uz/GaLzCYHMQADUMiREOyMdaWnGPyvBgTAJFZ', 'Mirosław', 'Bąk', '25641entwadeBąk109067@gmail.com', '4809684751', 'Biała Podlaska', '20793', 'Leśna', '8', '91', STR_TO_DATE('26-08-2021', '%d-%m-%Y'), 0, STR_TO_DATE('13-11-2021 10:46:42', '%d-%m-%Y %H:%i:%s'), 1);

INSERT INTO `employee` (`id`, `role_id`, `account_details_id`)
VALUES (1, 1, 31);
INSERT INTO `employee` (`id`, `role_id`, `account_details_id`)
VALUES (2, 2, 32);
INSERT INTO `employee` (`id`, `role_id`, `account_details_id`)
VALUES (3, 3, 33);
INSERT INTO `employee` (`id`, `role_id`, `account_details_id`)
VALUES (4, 3, 34);

INSERT INTO `customer` (`id`, `account_details_id`) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30);

INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (1, STR_TO_DATE('07-11-2021 16:14:36', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('13-11-2021 07:39:32', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-11-2021 17:58:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-11-2021 11:38:21', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('15-11-2021 13:09:17', '%d-%m-%Y %H:%i:%s'), 81, 23, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (2, STR_TO_DATE('31-01-2022 08:48:29', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-02-2022 18:50:56', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-02-2022 08:44:18', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 13:55:06', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-02-2022 16:46:31', '%d-%m-%Y %H:%i:%s'), 66, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (3, STR_TO_DATE('04-02-2022 12:09:54', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('13-02-2022 18:41:48', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('12-02-2022 10:01:17', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-02-2022 11:35:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-02-2022 16:41:49', '%d-%m-%Y %H:%i:%s'), 52, 21, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (4, STR_TO_DATE('16-11-2021 12:15:54', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-11-2021 15:44:12', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-11-2021 16:54:06', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-11-2021 08:53:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-11-2021 10:57:27', '%d-%m-%Y %H:%i:%s'), 21, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (5, STR_TO_DATE('25-12-2021 16:35:21', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-01-2022 16:06:01', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('30-12-2021 14:44:41', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-01-2022 07:14:52', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('31-12-2021 11:21:34', '%d-%m-%Y %H:%i:%s'), 38, 7, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (6, STR_TO_DATE('02-02-2022 13:41:26', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-02-2022 11:53:48', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-02-2022 09:44:50', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 08:34:30', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-02-2022 14:44:00', '%d-%m-%Y %H:%i:%s'), 46, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (7, STR_TO_DATE('12-08-2021 16:24:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-08-2021 17:39:45', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-08-2021 14:13:18', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('30-08-2021 18:37:00', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-08-2021 11:38:23', '%d-%m-%Y %H:%i:%s'), 60, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (8, STR_TO_DATE('06-11-2021 12:17:23', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-11-2021 18:16:31', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-11-2021 11:39:24', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-11-2021 14:53:56', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('21-11-2021 10:43:34', '%d-%m-%Y %H:%i:%s'), 10, 7, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (9, STR_TO_DATE('15-11-2021 13:09:21', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-11-2021 10:51:16', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-11-2021 16:07:54', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-12-2021 13:51:22', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('27-11-2021 11:24:00', '%d-%m-%Y %H:%i:%s'), 106, 4, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (10, STR_TO_DATE('27-02-2022 09:21:08', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-03-2022 14:57:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-02-2022 18:13:14', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('12-03-2022 14:54:50', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-02-2022 16:16:34', '%d-%m-%Y %H:%i:%s'), 106, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (11, NULL, NULL, STR_TO_DATE('16-01-2022 18:25:01', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('31-01-2022 09:25:53', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('29-01-2022 14:45:24', '%d-%m-%Y %H:%i:%s'), 78, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (12, STR_TO_DATE('31-07-2021 13:19:13', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-08-2021 12:53:58', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('31-07-2021 11:30:28', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('15-08-2021 10:21:51', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('04-08-2021 11:51:07', '%d-%m-%Y %H:%i:%s'), 37, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (13, STR_TO_DATE('18-11-2021 09:47:07', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-11-2021 14:16:47', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('22-11-2021 15:23:59', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-12-2021 11:38:44', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-12-2021 08:10:56', '%d-%m-%Y %H:%i:%s'), 69, 18, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (14, STR_TO_DATE('06-11-2021 07:48:06', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('15-11-2021 17:13:48', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 107, 24, 4);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (15, STR_TO_DATE('13-02-2022 14:54:23', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-02-2022 16:25:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-02-2022 16:13:24', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('02-03-2022 12:32:30', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-02-2022 10:43:59', '%d-%m-%Y %H:%i:%s'), 97, 11, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (16, STR_TO_DATE('13-07-2021 16:15:37', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-07-2021 13:07:11', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('16-07-2021 18:46:30', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-08-2021 08:10:31', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-07-2021 07:44:32', '%d-%m-%Y %H:%i:%s'), 107, 18, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (17, STR_TO_DATE('08-03-2022 17:25:14', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-03-2022 11:19:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-03-2022 15:54:50', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-03-2022 12:32:17', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('29-03-2022 08:12:26', '%d-%m-%Y %H:%i:%s'), 102, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (18, STR_TO_DATE('05-03-2022 09:06:34', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-03-2022 16:27:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-03-2022 18:38:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-03-2022 12:43:23', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-03-2022 13:09:25', '%d-%m-%Y %H:%i:%s'), 3, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (19, STR_TO_DATE('14-02-2022 13:31:57', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('22-02-2022 13:39:13', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-02-2022 13:26:20', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-03-2022 12:07:24', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-03-2022 16:18:56', '%d-%m-%Y %H:%i:%s'), 57, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (20, STR_TO_DATE('14-11-2021 08:05:22', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('21-11-2021 16:42:16', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-11-2021 12:02:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-12-2021 12:05:36', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('22-11-2021 15:03:04', '%d-%m-%Y %H:%i:%s'), 104, 16, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (21, NULL, NULL, STR_TO_DATE('26-02-2022 16:40:26', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('11-03-2022 07:49:01', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-03-2022 16:25:38', '%d-%m-%Y %H:%i:%s'), 4, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (22, STR_TO_DATE('17-08-2021 14:27:10', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-08-2021 12:13:34', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 102, 7, 4);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (23, STR_TO_DATE('26-09-2021 09:15:05', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-10-2021 10:34:36', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-10-2021 16:48:55', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-10-2021 10:26:45', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('13-10-2021 12:35:38', '%d-%m-%Y %H:%i:%s'), 4, 20, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (24, NULL, NULL, STR_TO_DATE('19-02-2022 14:23:36', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-03-2022 18:54:44', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 14:14:02', '%d-%m-%Y %H:%i:%s'), 86, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (25, STR_TO_DATE('19-01-2022 18:29:01', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-01-2022 08:51:47', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('21-01-2022 15:24:37', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-02-2022 14:36:16', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-01-2022 13:06:39', '%d-%m-%Y %H:%i:%s'), 102, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (26, STR_TO_DATE('06-02-2022 14:50:06', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('15-02-2022 12:21:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-02-2022 10:04:37', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('27-02-2022 11:03:42', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-02-2022 15:01:14', '%d-%m-%Y %H:%i:%s'), 18, 7, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (27, STR_TO_DATE('09-01-2022 14:10:12', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-01-2022 11:54:24', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-01-2022 09:50:26', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-01-2022 10:36:25', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-01-2022 13:52:14', '%d-%m-%Y %H:%i:%s'), 48, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (28, STR_TO_DATE('07-08-2021 18:13:27', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-08-2021 16:10:32', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-08-2021 12:50:35', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-08-2021 17:05:02', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-08-2021 07:15:07', '%d-%m-%Y %H:%i:%s'), 4, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (29, STR_TO_DATE('31-12-2021 08:27:58', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-01-2022 10:55:15', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-01-2022 11:09:53', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-01-2022 15:25:26', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('04-01-2022 14:23:46', '%d-%m-%Y %H:%i:%s'), 94, 29, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (30, STR_TO_DATE('05-03-2022 10:18:28', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('11-03-2022 17:29:53', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-03-2022 08:43:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-03-2022 12:00:04', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-03-2022 07:02:52', '%d-%m-%Y %H:%i:%s'), 58, 8, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (31, STR_TO_DATE('05-10-2021 15:24:50', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('11-10-2021 11:38:23', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-10-2021 12:38:40', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-10-2021 16:47:08', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-10-2021 18:30:41', '%d-%m-%Y %H:%i:%s'), 15, 8, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (32, NULL, NULL, STR_TO_DATE('25-01-2022 09:05:33', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-02-2022 09:04:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-01-2022 07:42:09', '%d-%m-%Y %H:%i:%s'), 90, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (33, STR_TO_DATE('09-02-2022 12:49:42', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('16-02-2022 16:43:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-02-2022 14:59:14', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-02-2022 16:18:40', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-02-2022 10:22:21', '%d-%m-%Y %H:%i:%s'), 93, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (34, STR_TO_DATE('09-03-2022 12:38:11', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('16-03-2022 10:03:12', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 64, 4, 4);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (35, STR_TO_DATE('12-02-2022 18:50:26', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-02-2022 18:14:46', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('13-02-2022 18:06:29', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-02-2022 10:43:27', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('16-02-2022 08:32:18', '%d-%m-%Y %H:%i:%s'), 73, 29, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (36, STR_TO_DATE('19-02-2022 09:31:18', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-02-2022 08:17:24', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-02-2022 18:48:42', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-03-2022 17:48:31', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('02-03-2022 09:19:03', '%d-%m-%Y %H:%i:%s'), 15, 28, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (37, STR_TO_DATE('29-09-2021 11:26:16', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-10-2021 18:58:16', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 66, 23, 4);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (38, STR_TO_DATE('03-01-2022 10:42:14', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-01-2022 08:44:45', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-01-2022 14:18:50', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-01-2022 09:52:25', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-01-2022 09:58:53', '%d-%m-%Y %H:%i:%s'), 48, 29, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (39, STR_TO_DATE('09-11-2021 15:15:35', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-11-2021 17:10:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('09-11-2021 12:10:51', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-11-2021 16:22:36', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('12-11-2021 10:58:24', '%d-%m-%Y %H:%i:%s'), 108, 5, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (40, STR_TO_DATE('16-02-2022 15:47:59', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-02-2022 13:16:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 07:55:41', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('04-03-2022 14:35:22', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('02-03-2022 09:21:48', '%d-%m-%Y %H:%i:%s'), 42, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (41, STR_TO_DATE('08-09-2021 15:01:41', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('12-09-2021 11:01:18', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-09-2021 18:11:25', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('29-09-2021 07:22:21', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-09-2021 18:54:14', '%d-%m-%Y %H:%i:%s'), 84, 4, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (42, STR_TO_DATE('25-08-2021 12:28:11', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('02-09-2021 08:22:18', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-08-2021 17:36:46', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-09-2021 08:53:57', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('01-09-2021 18:39:01', '%d-%m-%Y %H:%i:%s'), 82, 16, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (43, STR_TO_DATE('10-11-2021 08:57:20', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('14-11-2021 11:22:54', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-11-2021 15:23:10', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-11-2021 17:24:31', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('11-11-2021 18:24:24', '%d-%m-%Y %H:%i:%s'), 87, 21, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (44, STR_TO_DATE('29-12-2021 13:52:57', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-01-2022 07:26:58', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('29-12-2021 11:06:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-01-2022 08:22:37', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('16-01-2022 10:50:32', '%d-%m-%Y %H:%i:%s'), 100, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (45, STR_TO_DATE('09-12-2021 08:44:01', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('17-12-2021 15:21:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('12-12-2021 15:45:10', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-12-2021 08:22:04', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-12-2021 16:29:14', '%d-%m-%Y %H:%i:%s'), 58, 5, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (46, STR_TO_DATE('22-08-2021 07:52:29', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('27-08-2021 07:17:51', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('26-08-2021 14:46:17', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('08-09-2021 14:47:05', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-09-2021 10:20:35', '%d-%m-%Y %H:%i:%s'), 17, 23, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (47, STR_TO_DATE('17-02-2022 14:30:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-02-2022 14:37:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-02-2022 14:10:19', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('04-03-2022 13:22:09', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 10:49:28', '%d-%m-%Y %H:%i:%s'), 18, 27, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (48, NULL, NULL, STR_TO_DATE('06-02-2022 07:23:07', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('19-02-2022 10:50:06', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('10-02-2022 12:26:20', '%d-%m-%Y %H:%i:%s'), 79, 16, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (49, STR_TO_DATE('31-01-2022 16:09:31', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-02-2022 18:52:02', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 24, 27, 4);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (50, STR_TO_DATE('20-07-2021 08:41:28', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('28-07-2021 10:59:43', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('20-07-2021 09:50:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('31-07-2021 12:30:35', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-07-2021 18:30:53', '%d-%m-%Y %H:%i:%s'), 99, 24, 3);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (51, STR_TO_DATE('25-03-2022 18:22:58', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('05-04-2022 16:44:05', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 99, 24, 1);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (52, STR_TO_DATE('24-03-2022 08:22:07', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-04-2022 11:26:30', '%d-%m-%Y %H:%i:%s'), NULL, NULL, NULL, 20, 4, 1);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (53, STR_TO_DATE('15-03-2022 16:07:54', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-03-2022 14:42:37', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('23-03-2022 16:13:28', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-04-2022 15:15:43', '%d-%m-%Y %H:%i:%s'), NULL, 26, 30, 2);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (54, STR_TO_DATE('28-03-2022 12:05:07', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('06-04-2022 09:30:43', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('29-03-2022 15:17:16', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('15-04-2022 14:40:17', '%d-%m-%Y %H:%i:%s'), NULL, 76, 12, 2);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (55, STR_TO_DATE('29-03-2022 18:18:03', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('07-04-2022 16:20:34', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-04-2022 09:26:52', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('18-04-2022 10:57:20', '%d-%m-%Y %H:%i:%s'), NULL, 45, 1, 2);
INSERT INTO `rental` (`id`, `booking_date_start`, `booking_date_end`, `rental_date_start`, `rental_till`, `rental_date_end`, `book_id`, `customer_id`, `rental_status_id`) 
VALUES (56, STR_TO_DATE('15-03-2022 12:11:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('25-03-2022 17:02:38', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('24-03-2022 11:40:55', '%d-%m-%Y %H:%i:%s'), STR_TO_DATE('03-04-2022', '%d-%m-%Y'), NULL, 44, 6, 2);

INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (23, 23, NULL, '4', STR_TO_DATE('20-11-2021 18:19:24', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (16, 27, NULL, '4', STR_TO_DATE('19-02-2022 10:25:58', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (13, 21, NULL, '1', STR_TO_DATE('26-02-2022 16:30:44', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (5, 24, NULL, '1', STR_TO_DATE('05-12-2021 20:23:54', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (9, 7, 'Super!', '4', STR_TO_DATE('03-01-2022 20:16:08', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (11, 24, 'Nie podobała mi się.', '1', STR_TO_DATE('16-02-2022 09:27:55', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (16, 24, NULL, '5', STR_TO_DATE('21-08-2021 18:48:02', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (2, 7, NULL, '1', STR_TO_DATE('25-11-2021 11:55:01', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (28, 4, '', '5', STR_TO_DATE('03-12-2021 12:04:34', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (28, 27, 'Zła.', '2', STR_TO_DATE('09-03-2022 11:13:59', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (21, 24, NULL, '5', STR_TO_DATE('01-02-2022 13:05:14', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (8, 24, NULL, '5', STR_TO_DATE('05-08-2021 21:17:03', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (17, 18, NULL, '1', STR_TO_DATE('03-12-2021 04:47:01', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (26, 11, NULL, '3', STR_TO_DATE('27-02-2022 12:36:00', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (28, 18, NULL, '3', STR_TO_DATE('01-08-2021 22:56:11', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (27, 16, NULL, '2', STR_TO_DATE('30-11-2021 09:01:17', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (1, 27, NULL, '1', STR_TO_DATE('14-03-2022 16:10:35', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (1, 20, NULL, '2', STR_TO_DATE('15-10-2021 06:14:44', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (24, 28, NULL, '4', STR_TO_DATE('21-02-2022 02:49:42', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (4, 7, 'Niezbyt mi się podobała.', '3', STR_TO_DATE('14-02-2022 11:04:53', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (11, 27, NULL, '2', STR_TO_DATE('24-01-2022 16:54:48', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (1, 24, NULL, '4', STR_TO_DATE('16-08-2021 04:54:56', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (15, 8, NULL, '3', STR_TO_DATE('22-03-2022 00:57:23', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (3, 8, 'Taka sobie.', '3', STR_TO_DATE('29-10-2021 00:52:55', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (25, 27, NULL, '1', STR_TO_DATE('03-03-2022 16:31:08', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (20, 29, NULL, '2', STR_TO_DATE('17-02-2022 17:27:23', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (3, 28, NULL, '4', STR_TO_DATE('05-03-2022 09:58:06', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (11, 29, NULL, '3', STR_TO_DATE('10-01-2022 21:26:52', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (28, 5, 'Koszmarna!', '1', STR_TO_DATE('14-11-2021 07:31:23', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (9, 27, NULL, '1', STR_TO_DATE('04-03-2022 11:25:57', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (23, 4, NULL, '2', STR_TO_DATE('03-10-2021 16:32:47', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (23, 16, 'Zła.', '1', STR_TO_DATE('04-09-2021 07:39:56', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (24, 21, 'Mogła być.', '3', STR_TO_DATE('12-11-2021 22:16:52', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (26, 24, NULL, '5', STR_TO_DATE('20-01-2022 11:37:39', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (4, 23, NULL, '2', STR_TO_DATE('07-09-2021 23:42:09', '%d-%m-%Y %H:%i:%s'));
INSERT INTO `review` (`book_edition_id`, `customer_id`, `content`, `rate`, `published`)
VALUES (4, 27, NULL, '2', STR_TO_DATE('21-02-2022 12:44:40', '%d-%m-%Y %H:%i:%s'));