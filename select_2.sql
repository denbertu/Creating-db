SELECT COUNT(a.name) AS artists_tally, g2.name
  FROM artists AS a 
  JOIN genre_artist AS g
    ON a.artist_id = g.artist_id
  JOIN genres AS g2
    ON g2.genre_id = g2.genre_id
 GROUP BY g2.name
 ORDER BY g2.name ASC;

 SELECT COUNT(t.name) AS tracks_tally
   FROM tracks AS t
   JOIN albums AS a
     ON t.album_id = a.album_id
  WHERE a.year BETWEEN 2019 AND 2020;

SELECT AVG(t.duration) AS album_duration, a.name
  FROM tracks AS t
  JOIN albums AS a
    ON t.album_id = a.album_id
 GROUP BY a.name
 ORDER BY a.name ASC;

SELECT name
  FROM artists
 WHERE name not in (SELECT a.name
                      FROM artists AS a
                      JOIN album_artist AS a2
                        ON a.artist_id = a2.artist_id 
                      JOIN albums AS a3
                        ON a2.album_id = a3.album_id
                     WHERE a3.year = 2020
                    );

SELECT c.name
  FROM compilations AS c
  JOIN track_compilation AS t_c 
    ON c.compilation_id = t_c.compilation_id
  JOIN tracks AS t 
    ON t.track_id = t_c.track_id 
  JOIN albums AS al
    ON al.album_id = t.album_id
  JOIN album_artist AS a_a 
    ON al.album_id = a_a.album_id
  JOIN artists AS a 
    ON a.artist_id = a_a.artist_id
 WHERE a.name = 'artist_2';
