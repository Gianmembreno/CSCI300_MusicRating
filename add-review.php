<?php
include 'config.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Review</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">
</head>

<body>
    <h1>Add Review</h1>
    <form action="insert-data.php" method="post">

        <label for="songArtist">Artist</label>
        <input type="text" name="songArtist" id="songArtist">

        <label for="songName">Song Name</label>
        <input type="text" name="songName" id="songName">

        <label for="songReview">Review</label>
        <input type="text" name="songReview" id="songReview">

        <label for="songRating">Rating</label>
        <input type="text" name="songRating" id="songRating">
        <br>

        <div>
            <button type="submit" name="submitReview">Submit Review</button>
            <a href="user-page.php" class="button" type="button">Cancel</a>
        </div>

    </form>

</body>

</html>