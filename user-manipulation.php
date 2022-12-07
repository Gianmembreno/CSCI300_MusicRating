<?php
include 'config.php';

session_start();
//Declaring Variables
$username = "";
$email    = "";
$errors = array();
$_SESSION['success'] = "";
$currId = 0;

if (isset($_POST['register_user'])){

    //ADD OTHER TABLE DETAILS LATER
    // $email = mysqli_real_escape_string($conn, $_POST['email']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password_1 = mysqli_real_escape_string($conn, $_POST['password']);
    $currId = rand();

    // if (empty($email)) { array_push($errors, "Email is required"); }
    if (empty($username)) { array_push($errors, "Username is required"); }
    if (empty($password_1)) { array_push($errors, "Password is required"); }

    if (count($errors) == 0) {
        // Password encryption to increase data security
        //$password = md5($password_1);
         
        // Inserting data into table
        $query = "INSERT INTO users (userName, userID, userPassword) VALUES('$username', '$currId', '$password')";
         
        mysqli_query($conn, $query);
  
        // Storing username of the logged in user,
        // in the session variable
        $_SESSION['username'] = $username;
        $_SESSION['userID'] = $currId;

        // Welcome message
        $_SESSION['success'] = "You have registered and logged in";
         
        // Page on which the user will be redirected after logging in
        header('location: user-page.php');
    }

}

if (isset($_POST['login_user'])){
    // Data sanitization to prevent SQL injection
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    if (empty($username)) {
        array_push($errors, "Username is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    $query = "SELECT * FROM users WHERE userName = '$username' AND userPassword = '$password'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);


    if (mysqli_num_rows($result) == 1 ){
        $idquery = "SELECT userID FROM users WHERE userName = '$username' AND userPassword = '$password'";
        $resultID = mysqli_query($conn, $idquery);
        $row = mysqli_fetch_assoc($resultID);
        $currId = $row['userID'];

        $_SESSION['userID'] = $currId;
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You have logged in!";

        header('location: user-page.php');
    } else {
        array_push($errors, "Username or password incorrect");
    }
}

?>
