<?php 
    session_start();
    if (!isset($_SESSION['authenticated'])) {
        header('Location:index.php');
    } 
?>

<!doctype html>
<link rel="stylesheet" type="text/css" href="styles.css" />

<h1><?= "Welcome" ?></h1>
<h1><?= "Your username is: ".$_SESSION['username'] ?></h1>
<h1><?= "Your password hash is: ".$_SESSION['password'] ?></h1>
<h1><?= "Today's date is ".date("d/m/Y") ?></h1>

<form action="logout.php" method="post">
    <button type="submit">Log out</button>
</form> 
