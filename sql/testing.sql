USE ProjectHarmony;


INSERT INTO users (userID, firstName, lastName, userName, userEmail, userPassword) VALUES
                      ( 124124, 'test' , 'test', 'tester', 'test', '12345');

INSERT INTO users VALUES
(1281205,'Isaac','Ortega','uDraco','iortega@nyit.edu','passwordIsaac'),
(1268821,'Marvin','Rivera','shoebox','mriver17@nyit.edu','passwordMarvin'),
(1231231,'Angily', 'Ally','badbiddie','angily.ally@gmail.com','passwordAngily');

INSERT INTO artists (artistID, artistName) VALUES (123,'Harry Styles');
INSERT INTO songs (songID, songName, artistID, songGenre, songDuration, releaseDate, artistName) VALUES (1,'As It Was',123,'Pop','00:02:47','2022-4-1','Harry Styles');
INSERT INTO reviews (reviewID, userID, songID, review, rating, songName, artistName) VALUES (1,1265229,1,'Such a classic',5, 'As It Was','Harry Styles');

INSERT INTO reviews (reviewID, userID, songID, review, rating, songName, artistName) VALUES (1,1265229,1,'Such a classic',5, 'As It Was','Harry Styles');

SELECT * FROM reviews WHERE userID = 1;

UPDATE reviews SET artistName = 'Harry Styles' WHERE reviewID = 1;
UPDATE songs SET artistName = 'Harry Styles' WHERE artistID = 123;

ALTER TABLE songs
ADD artistName varchar(50);

ALTER TABLE reviews
ADD artistName varchar(50);


SELECT * FROM users;
SELECT * FROM reviews;
SELECT * FROM songs;
SELECT * FROM artists;