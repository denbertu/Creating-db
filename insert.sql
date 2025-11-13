INSERT INTO artists (name)
VALUES 
('artist 1'),
('artist_2'),
('artist 3'),
('artist_4');

INSERT INTO genres (name)
VALUES 
('genre_1'),
('genre_2'),
('genre_3'),
('genre_4');

INSERT INTO genre_artist (genre_id, artist_id)
VALUES 
(2, 3),
(2, 4),
(1, 2),
(3, 1);

INSERT INTO albums (name, year)
VALUES 
('album_1', 1929),
('album_2', 1919),
('album_3', 1999),
('album_4', 2020);

INSERT INTO album_artist (album_id, artist_id)
VALUES 
(1, 3),
(2, 3),
(3, 2),
(4, 1);

INSERT INTO tracks (name, duration, album_id)
VALUES 
('my_track_1', 360, 4),
('track_2', 250, 3),
('track_3', 770, 4),
('track_4', 999, 2),
('track_5', 120, 4),
('track_6', 30, 1);

INSERT INTO compilations (name, year)
VALUES 
('compilation_1', 1969),
('compilation_2', 1968),
('compilation_3', 1900),
('compilation_4', 2019);

INSERT INTO track_compilation (track_id, compilation_id)
VALUES 
(1, 3),
(2, 3),
(3, 2),
(4, 4),
(5, 4),
(6, 1);