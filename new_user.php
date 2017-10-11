<link rel="stylesheet" type="text/css" href="styles.css" />

<?php
    session_start();

    if (isset($_SESSION['authenticated'])) {
        header('Location:welcome.php');
    }

    if (isset($_POST['new_user'])) {
        $valid_login = true;

        if ($_POST["password"] == $_POST["confirm_password"]){

            if (strlen($_POST['password']) < 8){
                echo "<h2>Passwords must be at least 8 characters long.</h2>";
                $valid_login = false;
            }

            $pass_array = str_split($_POST['password']);

            $number = false;
            $uppercase = false;
            $lowercase = false;
            $symbol = false;

            foreach($pass_array as $value){
                if (is_numeric($value)){
                    $number = true;
                }
                elseif (ctype_lower($value)){
                    $lowercase = true;
                }
                elseif (ctype_upper($value)){
                    $uppercase = true;
                }
                elseif (ctype_punct($value)){
                    $symbol = true;
                }
            }

            if (!($number && $lowercase && $uppercase && $symbol)){
                echo "<h2>Passwords must contain at least one number, lowercase letter, uppercase letter, and symbol.</h2>";
                $valid_login = false;
            }

            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "cosc";

            if ($valid_login){
                try {
                    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    $stmt = $conn->prepare("SELECT COUNT(*) AS 'count' FROM users WHERE username='".$_POST['username']."'");
                    $stmt->execute();
                    $stmt->setFetchMode(PDO::FETCH_ASSOC);
                    $fetch_result = $stmt->fetch();

                    if ($fetch_result['count'] > 0) {
                        echo "<h2>A user with that username already exists</h2>";
                    }
                    else {
                        $hash = password_hash($_POST['password'], PASSWORD_DEFAULT);

                        $sql = "INSERT INTO users (username, password_hash)
                        VALUES ('".$_POST['username']."', '".$hash."')";

                        $conn->exec($sql);

                        $_SESSION['username'] = $_POST['username'];
                        $_SESSION['password'] = $hash;
                        $_SESSION['authenticated'] = true;

                        $conn = null;
                        
                        header('Location:welcome.php');
                    }
                }
                catch(PDOException $e){
                    echo "Connection failed: " . $e->getMessage();
                }

                $conn = null;
            }
        } else {
            echo "<h2>The passwords did not match, please try again.</h2>";
            $valid_login = false;
        }
    }
?>

<!doctype html>

<h1>Create New User</h1>

<form action="new_user.php" method="post">
    <label><b>Username</b></label>
    <input type="text" placeholder="Username" name="username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Password" name="password" required>

    <label><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" name="confirm_password" required>

    <button type="submit" name="new_user">Create</button>
</form> 