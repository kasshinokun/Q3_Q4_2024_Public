#Test STR_TO_DATE ON INSERT INTO


USE sakila;
DROP TABLE IF EXISTS data_time_sql;
USE sakila;
CREATE TABLE IF NOT EXISTS data_time_sql(
	ID_TIME INT AUTO_INCREMENT PRIMARY KEY,
	TIME_DATE DATE NOT NULL
);
/*
INSERT INTO sakila.data_time_sql(TIME_DATE)##Incorrect Mode
VALUES
(STR_TO_DATE('21-01-2001','22-01-2001','23-01-2001','%d-%m-%Y'));#Generate error
*/

INSERT INTO sakila.data_time_sql(TIME_DATE)##Correct Mode
VALUES
(STR_TO_DATE('21-01-2001','%d-%m-%Y')),
(STR_TO_DATE('22-01-2001','%d-%m-%Y')),
(STR_TO_DATE('23-01-2001','%d-%m-%Y'));

#DATE FORMAT FOR BRAZIL
SELECT ID_TIME AS 'DATE ID', DATE_FORMAT(TIME_DATE,'%d-%m-%Y') AS 'DATE'FROM sakila.data_time_sql;