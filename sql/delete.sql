USE ProjectHarmony;

SELECT * FROM albums;
SELECT * FROM artists;
SELECT * FROM features;
SELECT * FROM likes;
SELECT * FROM playlists;
SELECT * FROM reviews;
SELECT * FROM songs;
SELECT * FROM users;

#
# DELETE FROM albums;
# DELETE FROM artists;
# DELETE FROM features;
# DELETE FROM likes;
# DELETE FROM playlists;
# DELETE FROM reviews;
# DELETE FROM songs;
# DELETE FROM users;

# SELECT songs.songID, songs.songName, artists.artistName, songs.songGenre, songs.songDuration, albums.albumName
# FROM songs
# INNER JOIN artists ON songs.artistID = artists.artistID
# INNER JOIN albums ON songs.songID = albums.songID
# ORDER BY songID;

# SELECT *
# FROM SONGS
# ORDER BY songDuration;
#
# SELECT *
# FROM users
# WHERE username like 'gmoney';