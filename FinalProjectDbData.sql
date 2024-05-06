-- Inserting records into the "song" table
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Bohemian Rhapsody', 1, 1, TO_DATE('1975-10-31', 'YYYY-MM-DD'), 1);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Smells Like Teen Spirit', 2, 2, TO_DATE('1991-09-10', 'YYYY-MM-DD'), 1);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Billie Jean', 3, 3, TO_DATE('1983-01-02', 'YYYY-MM-DD'), 2);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Hotel California', 4, 4, TO_DATE('1976-12-08', 'YYYY-MM-DD'), 1);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Hey Jude', 5, 5, TO_DATE('1968-08-26', 'YYYY-MM-DD'), 1);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Otra Noche en Miami', 6, 6, TO_DATE('2018-12-24', 'YYYY-MM-DD'), 3);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('So What', 7, 7, TO_DATE('1959-08-17', 'YYYY-MM-DD'), 4);  
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('My Favorite Things', 8, 8, TO_DATE('1961-03-01', 'YYYY-MM-DD'), 4);  
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Take the A Train', 9, 9, TO_DATE('1941-02-15', 'YYYY-MM-DD'), 4); 
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Summertime', 10, 10, TO_DATE('1957-07-19', 'YYYY-MM-DD'), 4); 
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('West End Blues', 11, 11, TO_DATE('1928-06-28', 'YYYY-MM-DD'), 4);  
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Despacito', 12, 12, TO_DATE('2017-01-12', 'YYYY-MM-DD'), 3);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Livin la Vida Loca', 13, 13, TO_DATE('1999-03-23', 'YYYY-MM-DD'), 3);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('La Mordidita', 13, 14, TO_DATE('2015-06-12', 'YYYY-MM-DD'), 3);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Che Che Cole', 14, 15, TO_DATE('1973-08-15', 'YYYY-MM-DD'), 3);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Play it Again', 15, 16, TO_DATE('2014-03-24', 'YYYY-MM-DD'), 5);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Hurricane', 16, 17, TO_DATE('2016-11-04', 'YYYY-MM-DD'), 5);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('I Wrote the Book', 17, 18, TO_DATE('2018-04-27', 'YYYY-MM-DD'), 5);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Wagon Wheel', 18, 19, TO_DATE('2013-01-07', 'YYYY-MM-DD'), 5);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Nine Ball', 19, 20, TO_DATE('2019-09-20', 'YYYY-MM-DD'), 5);
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Shake It Off', 20, 21, TO_DATE('2014-08-18', 'YYYY-MM-DD'), 2);  
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Levitating', 21, 22, TO_DATE('2020-03-27', 'YYYY-MM-DD'), 2);  
INSERT INTO song (title, artistID, songID, releaseDate, genreID) VALUES ('Shape of You', 22, 23, TO_DATE('2017-01-06', 'YYYY-MM-DD'), 2); 

-- Inserting records into the "artist" table
INSERT INTO artist (name, artistID) VALUES ('Queen', 1);
INSERT INTO artist (name, artistID) VALUES ('Nirvana', 2);
INSERT INTO artist (name, artistID) VALUES ('Michael Jackson', 3);
INSERT INTO artist (name, artistID) VALUES ('Eagles', 4);
INSERT INTO artist (name, artistID) VALUES ('The Beatles', 5);
INSERT INTO artist (name, artistID) VALUES ('Bad Bunny', 6);
INSERT INTO artist (name, artistID) VALUES ('Miles Davis', 7);
INSERT INTO artist (name, artistID) VALUES ('John Coltrane', 8);
INSERT INTO artist (name, artistID) VALUES ('Duke Ellington', 9);
INSERT INTO artist (name, artistID) VALUES ('Ella Fitzgerald', 10);
INSERT INTO artist (name, artistID) VALUES ('Louis Armstrong', 11);
INSERT INTO artist (name, artistID) VALUES ('Luis Fonsi', 12);
INSERT INTO artist (name, artistID) VALUES ('Ricky Martin', 13);
INSERT INTO artist (name, artistID) VALUES ('Hector Lavoe', 14);
INSERT INTO artist (name, artistID) VALUES ('Luke Bryan', 15);
INSERT INTO artist (name, artistID) VALUES ('Luke Combs', 16);
INSERT INTO artist (name, artistID) VALUES ('Morgan Wallen', 17);
INSERT INTO artist (name, artistID) VALUES ('Darius Rucker', 18);
INSERT INTO artist (name, artistID) VALUES ('Zach Bryan', 19);
INSERT INTO artist (name, artistID) VALUES ('Taylor Swift', 20);
INSERT INTO artist (name, artistID) VALUES ('Dua Lipa', 21);
INSERT INTO artist (name, artistID) VALUES ('Ed Sheeran', 22);

-- Inserting records into the "album" table
INSERT INTO album (name, albumID, artistID) VALUES ('A Night at the Opera', 1, 1);
INSERT INTO album (name, albumID, artistID) VALUES ('Nevermind', 2, 2);
INSERT INTO album (name, albumID, artistID) VALUES ('Thriller', 3, 3);
INSERT INTO album (name, albumID, artistID) VALUES ('Hotel California', 4, 4);
INSERT INTO album (name, albumID, artistID) VALUES ('The Beatles (White Album)', 5, 5);
INSERT INTO album (name, albumID, artistID) VALUES ('X100PRE', 6, 6);
INSERT INTO album (name, albumID, artistID) VALUES ('Kind of Blue', 7, 7); 
INSERT INTO album (name, albumID, artistID) VALUES ('A Love Supreme', 8, 8);
INSERT INTO album (name, albumID, artistID) VALUES ('The Duke: The Essential Collection', 9, 9); 
INSERT INTO album (name, albumID, artistID) VALUES ('Ella & Louis', 10, 10); 
INSERT INTO album (name, albumID, artistID) VALUES ('The Complete Hot Five and Hot Seven Recordings', 11, 11); 
INSERT INTO album (name, albumID, artistID) VALUES ('Vida', 12, 12);
INSERT INTO album (name, albumID, artistID) VALUES ('Ricky Martin', 13, 13);
INSERT INTO album (name, albumID, artistID) VALUES ('A Man and His Music', 14, 14);
INSERT INTO album (name, albumID, artistID) VALUES ('Crash My Party', 15, 15);
INSERT INTO album (name, albumID, artistID) VALUES ('This One''s for You', 16, 16);
INSERT INTO album (name, albumID, artistID) VALUES ('If I Know Me', 17, 17);
INSERT INTO album (name, albumID, artistID) VALUES ('True Believers', 18, 18);
INSERT INTO album (name, albumID, artistID) VALUES ('DeAnn', 19, 19);
INSERT INTO album (name, albumID, artistID) VALUES ('1989', 20, 20);  
INSERT INTO album (name, albumID, artistID) VALUES ('Future Nostalgia', 21, 21);  
INSERT INTO album (name, albumID, artistID) VALUES ('Divide', 22, 22);  




-- Inserting records into the "user" table
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('John', 'Doe', 1, 'johndoe');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Jane', 'Smith', 2, 'janesmith');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Alice', 'Johnson', 3, 'alicej');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Bob', 'Brown', 4, 'bobbrown');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Emily', 'Davis', 5, 'emilyd');

-- Inserting records into the "genre" table
INSERT INTO genre (genreID, name, bpm) VALUES (1, 'Rock', 120);
INSERT INTO genre (genreID, name, bpm) VALUES (2, 'Pop', 80);
INSERT INTO genre (genreID, name, bpm) VALUES (3, 'Latino', 110);
INSERT INTO genre (genreID, name, bpm) VALUES (4, 'Jazz', 200);
INSERT INTO genre (genreID, name, bpm) VALUES (5, 'Country', 120);

-- Create a playlist with Jazz genre songs
INSERT INTO playlist (playlistName, songs, userID)
SELECT 'Jazz Playlist', 
       LISTAGG(DISTINCT title, ', ') WITHIN GROUP (ORDER BY title) AS songs, 
       3  -- Assigning to userID 3 as an example (Alice Johnson)
FROM song 
WHERE genreID = (SELECT genreID FROM genre WHERE name = 'Jazz');  -- 3 is the genreID for Jazz

-- Create playlist with Rock genre songs
INSERT INTO playlist (playlistName, songs, userID)
SELECT 'Rock Playlist', 
       LISTAGG(DISTINCT  title, ', ') WITHIN GROUP (ORDER BY title) AS songs, 
       1  -- Assigning to userID 1 as an example
FROM song 
WHERE genreID = (SELECT genreID FROM genre WHERE name = 'Rock');

-- Create a playlist with Pop genre songs
INSERT INTO playlist (playlistName, songs, userID)
SELECT 'Pop Playlist', 
       LISTAGG(DISTINCT title, ', ') WITHIN GROUP (ORDER BY title) AS songs, 
       2  -- Assigning to userID 2 as an example
FROM song 
WHERE genreID = (SELECT genreID FROM genre WHERE name = 'Pop');

-- Create a playlist with Country genre songs
INSERT INTO playlist (playlistName, songs, userID)
SELECT 'Country Playlist', 
       LISTAGG(DISTINCT title, ', ') WITHIN GROUP (ORDER BY title) AS songs, 
       4  -- Assigning to userID 4
FROM song 
WHERE genreID = (SELECT genreID FROM genre WHERE name = 'Country');

-- Create a playlist with Latino genre songs
INSERT INTO playlist (playlistName, songs, userID)
SELECT 'Latino Playlist', 
       LISTAGG(DISTINCT title, ', ') WITHIN GROUP (ORDER BY title) AS songs, 
       5  -- Assigning to userID 2 as an example
FROM song 
WHERE genreID = (SELECT genreID FROM genre WHERE name = 'Latino');


