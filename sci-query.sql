show databases;
CREATE DATABASE CientificosComplejidad;

USE CientificosComplejidad;

CREATE TABLE  cientificosyareas( Id int, Name varchar(50), Area varchar(50));

LOAD DATA LOCAL INFILE '/home/sal/DB/UNAM/cientificosunamII.csv' INTO TABLE cientificosyareas  FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

/* 
Mostrar en orden en cuantas disciplinas han publicado (estando adscritos a la UNAM)
*/
select Name, COUNT(Name) from multidisci group by Name order by count(name);
