
INSERT INTO users VALUES
(1281205,'Isaac','Ortega','uDraco','iortega@nyit.edu','passwordIsaac'),
(1268821,'Marvin','Rivera','shoebox','mriver17@nyit.edu','passwordMarvin'),
(1231231,'Angily', 'Ally','Amoney','angily.ally@gmail.com','passwordAngily'),
(1233211,'Gian','Membreno','Gmoney','gmembren@nyit.edu','passwordGian'),
(1112223,'Bob','Marley','RastaMan','marleybob@gmail.com','passwordBob'),
(1267331,'Freddy','Sorto','fnutz','freddysorto@gmail.com','passwordFreddy'),
(1346722,'Joe','Buck','Buckies','joebuck@gmail.com','passwordJoe'),
(1542131,'Mister','Clean','Mr.Clean','clean@gmail.com','passwordClean'),
(1521398,'Jane','Doe','LittleDoe','janedoe@gmail.com','passwordJane'),
(6969696,'Johnny', 'Sins', 'DoctorSins','sins@gmail.com','passwordJohnny');


INSERT INTO artists VALUES
(123,'Harry Styles'),
(124,'Taylor Swift'),
(125,'Bad Bunny'),
(126,'Beyonce'),
(127,'Steve Lacy'),
(128,'Kendrick Lamar'),
(129,'Bad Bunny'),
(130,'Gunna'),
(131,'Lil Uzi Vert'),
(132,'Drake'),
(133,'Travis Scott'),
(134,'Jay-Z'),
(135,'Young Thug'),
(136,'Rauw Alejandro'),
(137,'Jhayco'),
(138,'Mac Miller'),
(139,'Metro Boomin'),
(140,'Chencho Corelone'),
(141,'The Notorious B.I.G'),
(142,'Lil Keed'),
(143,'Mr. Naisgai'),
(144,'Quavo'),
(145,'Future'),
(146,'Baby Rasta'),
(147,'Sech and Feid'),
(148,'Ty Dolla Sign');


INSERT INTO songs VALUES 
(1,'As It Was',123,'Pop','00:02:47','2022-4-1'),
(2,'Anti-Hero',124,'Pop','00:03:21','2022-10-21'),
(3,'Titi Me Pregunto',125,'Latin','00:04:04','2022-5-6'),
(4,'CUFF IT',126,'Pop','00:03:45','2022-7-29'),
(5,'Bad Habits',127,'R&B/Soul','00:03:52','2022-7-15'),
(6,'Die Hard',128,'Hip-hop','00:03:59','2022-5-13'),
(7,'Me Porto Bonito',129,'Latin','00:02:59','2022-5-6'),
(8,'pushin P',130,'Hip-Hop','00:2:16','2002-1-7'),
(9,'Just Wanna Rock',131,'Hip-Hop','00:02:02','2022-10-17'),
(10,'Sticky',132,'Hip-Hop','00:04:03','2022-6-17'),
(11,'pick up the phone',133,'Hip-Hop','00:04:12','2016-9-2'),
(12,"Brooklyn's Finest",134,'Hip-Hop','00:04:36','1996-6-25'),
(13,'Big Tipper',135,'Hip-Hop','00:03:43','2019-8-16'),
(14,'2/Catorce',136,'Latin','00:03:34','2021-6-25'),
(15,'PUNTO 40',136,'Latin','00:03:10','2022-11-11'),
(16,'En La De Ella',137,'Latin','00:03:51','2022-10-21'),
(17,'Cinderella',138,'Hip-Hop','00:08:00','2016-9-16'),
(18,'Metro Spider',139,'Hip-Hop','00:02:54','2022-12-2');


INSERT INTO albums VALUES
(231,"Harry's House",1,123,'2022-4-1'),
(232,'Midnights',2,124,'2022-10-21'),
(233,'Un Verano Sin Ti',3,125,'2022-5-6'),
(234,'RENAISSANCE',4,126,'2022-7-29'),
(235,'Gemini Rights',5,127,'2022-7-15'),
(236,'Mr. Morale & The Big Steppers',6,128,'2022-5-13'),
(237,'Un Verano Sin Ti',7,129,'2022-5-6'),
(238,'DS4EVER',8,130,'2022-1-7'),
(239,'Just Wanna Rock',9,131,'2022-10-17'),
(240,'Honestly Nevermind',10,132,'2022-6-17'),
(241,'Birds In The Trap Sing McKnight',11,133,'2016-9-2'),
(242,'Reasonable Doubt',12,134,'1996-6-25'),
(243,'So Much Fun',13,135,'2019-8-6'),
(244,'VICE VERSA',14,136,'2021-6-25'),
(245,'SATURNO',15,137,'2022-11-11'),
(246,'En La De Ella',16,138,'2022-10-21'),
(247,'The Divine Feminine',17,139,'2016-9-16'),
(248,'Heros & Villains',18,140,'2022-12-2');

INSERT INTO features VALUES
(7,140),
(8,145),
(8,135),
(11,135),
(11,144),
(12,141),
(13,142),
(14,143),
(15,146),
(16,147),
(17,148),
(18,135);

INSERT INTO playlists values
("Isaac's Playlist", 1),
("Isaac's Playlist", 18),
("Isaac's Playlist", 13),
("Isaac's Playlist", 5),
("Isaac's Playlist", 12),
("Isaac's Playlist", 7),
("Isaac's Playlist", 8),
("Isaac's Playlist", 9),
("Isaac's Playlist", 10),
("Isaac's Playlist", 11);

INSERT INTO reviews VALUES
(853,1281205,3, "This song is a bop. Even though I don't know the language.",5),
(854,1281205,5, "Nice song, found it on 'Tik-Tok'",4),
(855,1281205,9, "I JUST WANNA ROCK",5),
(856,1268821,7, "Favorite song rn",5),
(857,1268821,11,'Such a classic',5),
(858,1268821,2,'Greatest pop song right now!',4),
(859,1231231,12,'Fire!',3),
(860,1231231,15,'Not my favorite',1),
(861,1233211,17,'RIP Mac Miller',5),
(862,1233211,18,"If metro boomin don't trust you..",4);

INSERT INTO likes VALUES
(FALSE,1,1281205),
(TRUE,1,1231231),
(TRUE,3,1268821),
(TRUE,3,1233211),
(FALSE,5,1268821),
(FALSE,5,1281205),
(TRUE,7,1268821),
(TRUE,7,1231231),
(TRUE,9,1233211),
(TRUE,9,1281205),
(TRUE,11,1281205),
(TRUE,11,1268821);

SELECT songs.songID, songs.songName, artists.artistName, songs.songGenre, songs.songDuration, albums.albumName
FROM songs
INNER JOIN artists ON songs.artistID = artists.artistID
INNER JOIN albums ON songs.songID = albums.songID
ORDER BY songID;

SELECT *
FROM SONGS
ORDER BY songDuration;

SELECT *
FROM users
WHERE username like 'gmoney';

CREATE VIEW userInformation AS
SELECT username, firstName, lastName, userEmail
FROM users;

SELECT *
FROM userInformation;

CREATE VIEW marvinReviews AS
SELECT users.username, users.firstName, users.lastName, reviews.rating, reviews.review
FROM users, reviews
WHERE users.userID = reviews.userID AND users.userID = 1268821;

SELECT *
FROM marvinReviews;

CREATE VIEW isaacLikes AS
SELECT users.userName, users.firstName, users.lastName, songs.songName
FROM users, songs, likes
WHERE users.userID = likes.userID AND songs.songID = likes.songID AND users.userID = 1281205;

SELECT *
FROM isaacLikes;



