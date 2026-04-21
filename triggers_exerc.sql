CREATE DATABASE TriggerDemo;
USE TriggerDemo;

CREATE TABLE users (
username VARCHAR(100),
age INT
);

INSERT INTO users (username, age)
VALUES ('bobby', 22);

DELIMITER $$

CREATE TRIGGER must_be_adult
BEFORE INSERT ON users FOR EACH ROW
BEGIN
	IF NEW.age < 18
    THEN
		SIGNAL SQLSTATE '45000'
				SET MESSAGE_TEXT = 'Must be an adult';
                
	END IF;
END;
$$

DELIMITER ;
