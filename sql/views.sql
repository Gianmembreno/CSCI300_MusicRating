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