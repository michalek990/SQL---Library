-- Imiona i nazwiska autorów którzy wciąż żyją.
SELECT concat(firstname, ' ', lastname) AS full_name
FROM author
WHERE death_date IS NULL
ORDER BY full_name;

-- Imiona, nazwiska i data urodzenia autorów którzy urodzili się w latach 40 XX wieku.
-- Dolna i górna granica w wyrażeniu BETWEEN są uwzględniane a więc 
-- BETWEEN jest odpowiednikiem warunku: WHERE birth_date >= '1940-01-01' AND birth_date <= '1950-01-01'
-- Ponieważ godzina nie została podana to domyślnie zostanie ustawiona północ.
SELECT concat(firstname, ' ', lastname) AS full_name, birth_date
FROM author
WHERE birth_date BETWEEN '1940-01-01' AND '1950-01-01'
ORDER BY full_name, birth_date;

-- List wszystkich wydań książek w twardych oprawach. Tabela wynikowa będzie zawierać tytuł książki, datę jej publikacji oraz unikatowy numer idbn.
-- Zapytanie to można by zrealizować posługując się samym id szukanego typu okładki.
SELECT idbn, title, published
FROM book_edition
WHERE cover_type_id IN (
	SELECT id 
    FROM cover_type 
    WHERE upper(name) = 'TWARDA'
)
ORDER BY title, published;

-- Lista imion i nazwisk autorów których nazwiska zaczynają się na literę A, B lub C
SELECT firstname, lastname
FROM author
WHERE upper(lastname) REGEXP '^[A-C]'
ORDER BY lastname, firstname;

-- List wszystkich książek w języku angielskim.
SELECT be.idbn, be.title
FROM book_edition AS be
	INNER JOIN language l
    ON be.language_id = l.id
WHERE upper(l.name) = "ANGIELSKI"
ORDER BY be.title;

-- Lista wszystkich wydań książek których autorem lub współautorem był Stephen King.
SELECT be.idbn, be.title
FROM book_edition AS be
	INNER JOIN original_book AS ob
    ON be.book_id = ob.id
    INNER JOIN book_authorship AS ba
    ON ob.id = ba.book_id
    INNER JOIN author a
    ON ba.author_id = a.id
WHERE upper(a.firstname) = 'STEPHEN' AND upper(a.lastname) = 'KING';

-- Lista wszystkich książek których autorem jest Frank Herbert a współautorem Brian Herbert.
-- Tabela wynikowa będzie zawierać jedynie kolumnę z oryginalnymi tytułami książek.
SELECT ob.original_title
FROM original_book AS ob
    INNER JOIN book_authorship AS ba1
    ON ob.id = ba1.book_id
    INNER JOIN author AS a1
    ON ba1.author_id = a1.id
    INNER JOIN book_authorship AS ba2
    ON ob.id = ba2.book_id
    INNER JOIN author AS a2
    ON ba2.author_id = a2.id
WHERE upper(a1.firstname) = 'FRANK' AND upper(a1.lastname) = 'HERBERT'
	AND upper(a2.firstname) = 'BRIAN' AND upper(a2.lastname) = 'HERBERT';

-- Lista wszystkich książek z serii Fundacja które posiadają wydanie w języku polskim.
-- Tabela wynikowa jest uporządkowana względem kolejności czytania książek w serii.
SELECT DISTINCT be.title, bs.number
FROM book_edition AS be
	INNER JOIN original_book AS ob
    ON be.book_id = ob.id
    INNER JOIN book_in_series AS bs
    ON ob.id = bs.book_id
    INNER JOIN series AS s
    ON bs.series_id = s.id
    INNER JOIN language AS l
    ON be.language_id = l.id
WHERE upper(s.name) = "FUNDACJA" AND upper(l.name) = "POLSKI"
ORDER BY bs.number;

-- Lista loginów, imion i nazwisk wszystkich użytkowników systemu wraz z ich rolami w systemie.
SELECT ad.login AS login, ad.firstname AS imię, ad.lastname AS nazwisko, 'KLIENT' AS rola
FROM customer c
	INNER JOIN account_details AS ad
    ON c.account_details_id = ad.id
UNION
SELECT ad.login AS login, ad.firstname AS imię, ad.lastname AS nazwisko, r.name AS rola
FROM employee e
	INNER JOIN account_details AS ad
    ON e.account_details_id = ad.id
    INNER JOIN role AS r
    ON e.role_id = r.id
ORDER BY rola, nazwisko, imię;

-- Lista loginów, imion i nazwisk klientów którzy nie wypożyczyli żadnej książki.
SELECT ad.login, ad.firstname, ad.lastname
FROM account_details AS ad
	INNER JOIN customer AS c
    ON ad.id = c.account_details_id
WHERE c.id NOT IN (
	SELECT customer_id
    FROM rental
    GROUP BY customer_id
);

-- Kwerenda zwracająca liczbę wszystkich wypożyczonych książek przez użytkowników oraz liczbę wypożyczonych różnych książek. 
-- Wyniki są posortowane malejąco względem liczby wypożyczeń.
SELECT c.id, ad.login, ad.firstname, ad.lastname, count(r.customer_id) AS book_count, count(DISTINCT ob.id) AS dist_book_count
FROM original_book AS ob
	INNER JOIN book_edition AS be
    ON ob.id = be.book_id
    INNER JOIN book AS b
    ON be.id = b.book_edition_id
    INNER JOIN rental AS r
    ON b.id = r.book_id
    RIGHT OUTER JOIN customer AS c
    ON r.customer_id = c.id
    INNER JOIN account_details AS ad
    ON c.account_details_id = ad.id
GROUP BY c.id
ORDER BY book_count DESC, dist_book_count DESC, ad.lastname, ad.firstname;

-- Kwerenda zwracająca czas w dniach przez jaki książka była wypożyczona. Jeżeli książka została tylko zarezerwowana ale
-- nie została wypożyczona to wiersz w kolumnie duration tabeli wynikowej będzie miał wartość 0, jeżeli książka jest nadal wypożyczona
-- to czas liczony jest od aktualnej daty.
SELECT c.id, r.id, ad.firstname, ad.lastname, be.title, 
	CASE 
		WHEN r.rental_date_start IS NULL THEN 0
		WHEN r.rental_date_end IS NULL THEN datediff(curdate(), r.rental_date_start)
		ELSE datediff(r.rental_date_end, r.rental_date_start)
	END AS duration
FROM book_edition AS be
	INNER JOIN book AS b
    ON be.id = b.book_edition_id
    INNER JOIN rental AS r
    ON b.id = r.book_id
    INNER JOIN customer AS c
    ON r.customer_id = c.id
    INNER JOIN account_details AS ad
    ON c.account_details_id = ad.id
ORDER BY duration DESC, ad.lastname, ad.firstname, be.title;

-- Kwerenda zwracająca tabelę wynikową zawierająca liczbę dostępnych książek należących do danego gatunku.
SELECT g.name, count(bg.book_id) AS book_count
FROM original_book AS ob
	INNER JOIN book_genre AS bg
    ON ob.id = bg.book_id
    RIGHT JOIN genre AS g
    ON bg.genre_id = g.id
GROUP BY g.id
ORDER BY book_count DESC, g.name;

-- Kwerenda zawierająca wszystkie edycje książek zakwalifikowane jako literatura fantasy których 
-- średnia ocena jest większa od 3.0
SELECT be.id, be.idbn, be.title, round(avg(CAST(CAST(`rate` AS CHAR) AS SIGNED)), 2) AS average_rate
FROM genre AS g
	INNER JOIN book_genre AS bg
    ON g.id = bg.genre_id
    INNER JOIN original_book AS ob
    ON bg.book_id = ob.id
    INNER JOIN book_edition AS be
    ON ob.id = be.book_id
    INNER JOIN review AS r
    ON be.id = r.book_edition_id
WHERE g.name = 'FANTASY'
GROUP BY be.id, be.idbn, be.title
HAVING avg(r.rate) >= 3.0
ORDER BY average_rate, be.title, be.id;

-- Zestawienie obejmujące liczbę książek napisaną przez danego autora oraz 
-- liczbę książek napisaną przez dowolnego autora o danej narodowości.
SELECT c.name AS country_name, concat(a.firstname, ' ', a.lastname) AS author_name, count(*)
FROM author AS a 
	INNER JOIN country AS c
    ON a.country_id = c.id
    INNER JOIN book_authorship AS ba
    ON a.id = ba.author_id
GROUP BY c.name, author_name WITH ROLLUP
ORDER BY country_name, author_name;

