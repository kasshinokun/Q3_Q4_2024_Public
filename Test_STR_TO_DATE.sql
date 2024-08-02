#Test STR_TO_DATE ON INSERT INTO
/*
Created and Developed by Gabriel Cassino
Date: 02-Aug-2024

Thanks for reading
*/
	
#WITH 1 DATE

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


#________________________________________________________________________________________________________#
#WITH 3 DATES
USE sakila;
CREATE TABLE IF NOT EXISTS data_time_sql2(
	ID_TIME INT AUTO_INCREMENT PRIMARY KEY,
	TIME_DATE_INIT DATE NOT NULL,
    TIME_DATE_MID DATE NOT NULL,
    TIME_DATE_END DATE NOT NULL
);

INSERT INTO sakila.data_time_sql2(TIME_DATE_INIT ,TIME_DATE_MID,TIME_DATE_END)##Correct Mode
VALUES
(STR_TO_DATE('21-01-2001','%d-%m-%Y'),
STR_TO_DATE('22-01-2001','%d-%m-%Y'),
STR_TO_DATE('23-01-2001','%d-%m-%Y'));

#DATE FORMAT FOR BRAZIL
SELECT ID_TIME AS 'DATE ID', 
DATE_FORMAT(TIME_DATE_INIT,'%d-%m-%Y') AS 'INITIAL DATE',
DATE_FORMAT(TIME_DATE_MID,'%d-%m-%Y') AS 'MID DATE',
DATE_FORMAT(TIME_DATE_END,'%d-%m-%Y') AS 'FINAL DATE'
FROM sakila.data_time_sql2;
