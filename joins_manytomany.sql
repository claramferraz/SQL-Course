SELECT title, rating FROM series
JOIN reviews
ON series.id = reviews.series_id;

SELECT title, AVG(rating) AS avg_rating FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY title;

SELECT first_name, last_name, rating FROM reviewers
JOIN reviews
ON reviewers.id = reviews.reviewer_id;

SELECT title AS unreviewd_series FROM series
LEFT JOIN reviews
ON series.id = reviews.series_id
WHERE rating IS null;

SELECT genre, AVG(rating) AS avg_rating FROM series
JOIN reviews
ON series.id = reviews.series_id
GROUP BY genre;

SELECT first_name, last_name, COUNT(rating) AS COUNT, 
IFNULL(MIN(rating), 0.0) AS MIN, IFNULL(MAX(rating), 0.0) AS MAX,
CASE
	WHEN COUNT(rating) = 0 THEN 'INACTIVE'
    ELSE 'ACTIVE'
END AS STATUS
FROM reviewers
LEFT JOIN reviews
ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

SELECT title, rating, CONCAT(first_name, ' ', last_name) AS reviewer 
FROM reviews
JOIN series
ON series.id = reviews.series_id
JOIN reviewers
ON reviewers.id = reviews.reviewer_id
ORDER BY title;


