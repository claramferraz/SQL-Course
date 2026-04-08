CREATE TABLE inventory(
item_name VARCHAR(50),
price FLOAT(8,2),
quantity INT 
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAYNAME(NOW());

SELECT DATE_FORMAT(CURDATE(), '%e/%m/%Y'), CURTIME();

SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

CREATE TABLE tweets(
content VARCHAR(180),
username VARCHAR(50),
created_at TIMESTAMP default CURRENT_TIMESTAMP
);

INSERT INTO tweets(content, username)
VALUES (
'boy i am sick',
'clmfxrrz'
);

SELECT * FROM tweets;


