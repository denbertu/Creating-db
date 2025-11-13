SELECT name, duration
  FROM tracks
 WHERE duration = (SELECT max(duration) 
                     FROM tracks);

SELECT name, duration
  FROM tracks
 WHERE duration < 210;

SELECT name, year
  FROM compilations
 WHERE year BETWEEN 2018 AND 2020;

SELECT name
  FROM artists
 WHERE name NOT LIKE '% %';

SELECT name
  FROM tracks
 WHERE name LIKE '%my%';