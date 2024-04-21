-- Inserting records into the "song" table
INSERT INTO song (title, artistID, songID, releaseDate) VALUES ('Bohemian Rhapsody', 1, 1, TO_DATE('1975-10-31', 'YYYY-MM-DD'));
INSERT INTO song (title, artistID, songID, releaseDate) VALUES ('Smells Like Teen Spirit', 2, 2, TO_DATE('1991-09-10', 'YYYY-MM-DD'));
INSERT INTO song (title, artistID, songID, releaseDate) VALUES ('Billie Jean', 3, 3, TO_DATE('1983-01-02', 'YYYY-MM-DD'));
INSERT INTO song (title, artistID, songID, releaseDate) VALUES ('Hotel California', 4, 4, TO_DATE('1976-12-08', 'YYYY-MM-DD'));
INSERT INTO song (title, artistID, songID, releaseDate) VALUES ('Hey Jude', 5, 5, TO_DATE('1968-08-26', 'YYYY-MM-DD'));

-- Inserting records into the "artist" table
INSERT INTO artist (name, artistID) VALUES ('Queen', 1);
INSERT INTO artist (name, artistID) VALUES ('Nirvana', 2);
INSERT INTO artist (name, artistID) VALUES ('Michael Jackson', 3);
INSERT INTO artist (name, artistID) VALUES ('Eagles', 4);
INSERT INTO artist (name, artistID) VALUES ('The Beatles', 5);

-- Inserting records into the "album" table
INSERT INTO album (name, albumID, artistID) VALUES ('A Night at the Opera', 1, 1);
INSERT INTO album (name, albumID, artistID) VALUES ('Nevermind', 2, 2);
INSERT INTO album (name, albumID, artistID) VALUES ('Thriller', 3, 3);
INSERT INTO album (name, albumID, artistID) VALUES ('Hotel California', 4, 4);
INSERT INTO album (name, albumID, artistID) VALUES ('The Beatles (White Album)', 5, 5);


-- Inserting records into the "user" table
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('John', 'Doe', 1, 'johndoe');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Jane', 'Smith', 2, 'janesmith');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Alice', 'Johnson', 3, 'alicej');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Bob', 'Brown', 4, 'bobbrown');
INSERT INTO applicationUser (fname, lname, userID, username) VALUES ('Emily', 'Davis', 5, 'emilyd');

-- Inserting records into the "genre" table
INSERT INTO genre (name, bpm) VALUES ('Rock', NULL);
INSERT INTO genre (name, bpm) VALUES ('Grunge', NULL);
INSERT INTO genre (name, bpm) VALUES ('Pop', NULL);
INSERT INTO genre (name, bpm) VALUES ('Classic Rock', NULL);
INSERT INTO genre (name, bpm) VALUES ('Psychedelic Rock', NULL);
