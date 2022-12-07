<?php
include 'config.php';

session_start();
//Declaring Variables
$username = "";
$email    = "";
$errors = array();
$_SESSION['success'] = "";

if (isset($_POST['register_user'])){

    //ADD OTHER TABLE DETAILS LATER
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $email = mysqli_real_escape_string($db, $_POST['email']);
    $password_1 = mysqli_real_escape_string($db, $_POST['password_1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['password_2']);

    if (empty($username)) { array_push($errors, "Username is required"); }
    if (empty($email)) { array_push($errors, "Email is required"); }
    if (empty($password_1)) { array_push($errors, "Password is required"); }

    if ($password_1 != $password_2) {
        array_push($errors, "The two passwords do not match");
        // Checking if the passwords match
    }

    if (count($errors) == 0) {
        // Password encryption to increase data security
        //$password = md5($password_1);
         
        // Inserting data into table
        $query = "INSERT INTO users (userName, userEmail, userPassword) VALUES('$username', '$email', '$password')";
         
        mysqli_query($conn, $query);
  
        // Storing username of the logged in user,
        // in the session variable
        $_SESSION['username'] = $username;
    
        // Welcome message
        $_SESSION['success'] = "You have logged in";
         
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
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You have logged in!";

        header('location: user-page.php');
    } else {
        array_push($errors, "Username or password incorrect");
    }
}

?>
