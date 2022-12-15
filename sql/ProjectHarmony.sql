CREATE DATABASE IF NOT EXISTS ProjectHarmony;
USE ProjectHarmony;

CREATE TABLE IF NOT EXISTS users
(
	userID			INT				PRIMARY KEY,
	firstName		VARCHAR(50)		NOT NULL,
	lastName		VARCHAR(50)		NOT NULL,
    userName		VARCHAR(20)		NOT NULL,
	userEmail		VARCHAR(50)		NOT	NULL,
	userPassword	VARCHAR(50)		NOT NULL
);

CREATE TABLE IF NOT EXISTS artists
(
	artistID		INT				PRIMARY KEY,
    artistName		VARCHAR(50)		NOT NULL
);


CREATE TABLE IF NOT EXISTS songs
(
	songID			INT				PRIMARY KEY,
    songName		VARCHAR(50)		NOT NULL,
    artistID		INT				NOT NULL,
    artistName      VARCHAR(50)     NOT NULL,
    songGenre		VARCHAR(20)		NOT NULL,
    songDuration	TIME 			NOT NULL,
    releaseDate		DATE			NOT NULL,
    
    CONSTRAINT songs_fk_artistid FOREIGN KEY (artistId)
		REFERENCES artists (artistID)
        ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS albums
(
	albumID			INT 			PRIMARY KEY,
    albumName		VARCHAR(50)		NOT NULL,
    songID			INT				NOT NULL,
    artistID		INT 			NOT NULL,
    releaseDate		DATE 			NOT NULL,
    
    CONSTRAINT albums_fk_songid FOREIGN KEY (songID)
			REFERENCES songs (songID)
            ON DELETE CASCADE,
	CONSTRAINT albums_fk_artistid FOREIGN KEY (artistID)
			REFERENCES artists (artistID)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS features
(
	songID			INT				NOT NULL,
    artistID		INT 			NOT NULL,
    
    CONSTRAINT features_fk_songid FOREIGN KEY (songID)
			REFERENCES songs (songID)
            ON DELETE CASCADE,
	CONSTRAINT features_fk_artistid FOREIGN KEY (artistID)
			REFERENCES artists (artistID)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS playlists
(
    playlistName	VARCHAR(50)		NOT NULL,
    songID			INT 			NOT NULL,
    
	CONSTRAINT playlists_fk_songid FOREIGN KEY (songID)
			REFERENCES songs (songID)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS reviews
(
	reviewID		INT 			PRIMARY KEY,
    userID			INT				NOT NULL,
    songID			INT				NOT NULL,
    artistName      VARCHAR(50)     NOT NULL,
    songName		VARCHAR(50)		NOT NULL,
    review			VARCHAR(200)	NOT NULL,
    rating			INT 			NOT NULL,
    
    CONSTRAINT reviews_fk_userid FOREIGN KEY (userid)
			REFERENCES users (userID)
            ON DELETE CASCADE,
	CONSTRAINT reviews_fk_songid FOREIGN KEY (songid)
			REFERENCES songs (songID)
            ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS likes
(
	songLiked		BOOLEAN			NOT NULL,
    songID			INT				NOT NULL,
    userID			INT 			NOT NULL,
    
    CONSTRAINT likes_fk_songID FOREIGN KEY (songID)
			REFERENCES songs (songID)
            ON DELETE CASCADE,
	CONSTRAINT likes_fk_userID FOREIGN KEY (userID)
			REFERENCES users (userID)
            ON DELETE CASCADE
);

