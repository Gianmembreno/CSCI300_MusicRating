<?php
 include 'config.php';

// Starting the session, to use and
// store data in session variable
session_start();
  
// If the session variable is empty, this
// means the user is yet to login
// User will be sent to 'login.php' page
// to allow the user to login
if (!isset($_SESSION['username'])) {
    $_SESSION['msg'] = "You have to log in first";
    header('location: login.php');
}
  
// Logout button will destroy the session, and
// will unset the session variables
// User will be headed to 'login.php'
// after logging out
if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['username']);
    header("location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.css">
</head>

<body>
    <div class="content">
        <?php if (isset($_SESSION['success'])) : ?>
            <div class="error success" >
                <h3>
                    <?php
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                    ?>
                </h3>
            </div>
        <?php endif ?>
    </div>


    <?php  if (isset($_SESSION['username'])) : ?>
        <h1>Welcome <strong><?php echo $_SESSION['username']; ?></strong></h1>
        <p>
            <a href="index.php?logout='1'"> Click here to Logout </a> 
        </p>
    <?php endif ?>

    <h3>Reviews</h3>
    <a href="add-review.php" class="button">ADD</a>
    <!-- <a href=".php" class="button">SEARCH</a> -->
    <table>
        <thead>
            <th>Song Id</th>
            <th>Song Name</th>
            <th>Review</th>
            <th>Rating</th>
            <th>Action</th>
        </thead>
        <tbody>
            <?php
                $currId = $_SESSION['userID'];
                $sqlReview = "SELECT * FROM reviews WHERE userID = '$currId'";
                $resultReview = mysqli_query($conn, $sqlReview);
            
                while($row = mysqli_fetch_assoc($resultReview)){
                ?>
                <tr>
                    <td><?php echo $row['artistName']?></td>
                    <td><?php echo $row['songName']?></td>
                    <td><?php echo $row['review']?></td>
                    <td><?php echo $row['rating']?></td>
                    <td>
                        <a href="edit.php?id=<?php echo $row['songID']?>"></a>
                        <a href="delete.php?id=<?php echo $row['songID']?>"></a>
                    </td>
                </tr>
            <?php }  ?>
        </tbody>
    </table>
</body>

</html>