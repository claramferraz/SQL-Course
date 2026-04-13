USE BookShop;

SELECT title, released_year,
	CASE
		WHEN released_year >= 2000 THEN 'Modern Lit'
		ELSE '20th Century Lit'
	END AS GENRE
FROM books;

SELECT title, stock_quantity, 
	CASE
		WHEN stock_quantity <= 40 THEN '*'
		WHEN stock_quantity <= 70 THEN '**'
		WHEN stock_quantity <= 100 THEN '***'
		WHEN stock_quantity <= 140 THEN '****'
		ELSE '*****'
	END AS stock
FROM books;

SELECT title, author_lname,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
		WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
		ELSE 'Novel'
	END AS genre
FROM books;

SELECT title, author_lname FROM books WHERE author_lname LIKE 'C%' OR 'S%';

SELECT title, author_lname FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

SELECT title, pages FROM books WHERE pages BETWEEN 100 and 200;

SELECT author_fname, author_lname,
	CASE 
		WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
	END AS COUNT
FROM books
GROUP BY author_fname, author_lname;

SELECT title, author_lname FROM books WHERE author_lname IN ('Eggers', 'Chabon');