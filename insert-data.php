<?php
include 'config.php';
include 'user-manipulation.php';

if(isset($_POST['submitReview'])){
    $songArtist = $_POST['songArtist'];
    $songName = $_POST['songName'];
    $songReview = $_POST['songReview'];
    $songRating = $_POST['songRating'];
    $currId = $_SESSION['userID'];
    $reviewID = rand();
    $songID = rand();


    $sqlInsert = "INSERT INTO reviews (reviewID, userID, songID, review, rating, songName, artistName) 
    VALUES ($reviewID, $currId ,$songID, '$songReview', '$songRating' ,'$songName', '$songArtist')";
    
    $result = mysqli_query($conn, $sqlInsert);

    if($result) {
        header("Location: user-page.php?msg=New record created successfully");
    } else {
        echo "Failed: " . mysqli_error($conn);
    }

}