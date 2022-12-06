<?php

$host = "localhost";
$username = "id19971871_user";
$password = "!c9wp/5\qDAV3Y9";
$dbname = "id19971871_harmonydatabase";

$conn = mysqli_connect($host, $username, $password, $dbname);

if(mysqli_connect_errno()){
    die("Connection Error:" . mysqli_connect_error());
}

echo "Connection Successful,";
?>