<?php
include 'config.php';
include 'user-manipulation.php';

if(isset($_POST['submitReview'])){
    $songArtist = $_POST['songArtist'];
    $songName = $_POST['songName'];
    $songReview = $_POST['songReview'];
    $songRating = $_POST['songRating'];
    $currId = $_SESSION['userID'];
    $reviewID = random_int(0,100000);
    $songID = random_int(0,100000);
    $artistID = random_int(0,100000);



    $sqlInsert3 = "INSERT INTO artists (artistID, artistName) VALUES ('$artistID','$songArtist')";

    $sqlInsert2 = "INSERT INTO songs (songID, songName, artistID, songGenre, songDuration, releaseDate, artistName) 
    VALUES ('$songID','$songName','$artistID','blank','00:02:00','2022-1-1','$songArtist')";

    $sqlInsert = "INSERT INTO reviews (reviewID, userID, songID, review, rating, songName, artistName) 
    VALUES ($reviewID, $currId ,$songID, '$songReview', '$songRating' ,'$songName', '$songArtist')";
    
    $result3 = mysqli_query($conn, $sqlInsert3);
    $result2 = mysqli_query($conn, $sqlInsert2);
    $result = mysqli_query($conn, $sqlInsert);

    if($result) {
        header("Location: user-page.php?msg=New record created successfully");
    } else {
        echo "Failed: " . mysqli_error($conn);
    }
}