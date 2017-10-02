<?php 
    session_start();

    if (isset($_SESSION['authenticated'])) {
        header('Location:welcome.php');
    }

    if (!isset($_SESSION['login_attempts_count'])) {
        $_SESSION['login_attempts_count'] = 0;
        $_SESSION['login_attempts'] = array();
    }

    if (isset($_POST['login'])) {
        $passwords = array(
            "hello" => "world",
            "testing" => "123",
            "atari" => "2600",
            );

        if (array_key_exists($_POST["username"], $passwords) && $_POST["password"] == $passwords[$_POST["username"]]){
            $_SESSION['authenticated'] = true;
            $_SESSION['username'] = $_POST['username'];
            $_SESSION['password'] = $_POST['password'];
            header('Location:welcome.php');
        } else {
            echo "<h2>The information you provided is incorrect.</h2>";
            $_SESSION['login_attempts_count'] += 1;
            array_push($_SESSION['login_attempts'], array($_POST["username"], $_POST['password']));
        }
    }
?>

<link rel="stylesheet" type="text/css" href="styles.css" />

<!doctype html>
<form action="index.php" method="post" class="top-form">
    <label><b>Username</b></label>
    <input type="text" placeholder="Username" name="username" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Password" name="password" required>

    <button type="submit" name="login">Login</button>
</form> 

<form action="index.php" method="post" class="bottom-form">
        <button type="submit" name="report">Report</button>
</form>

<?php 
    if (isset($_POST['report'])){
        echo "<h2>There have been " . $_SESSION['login_attempts_count'] . " failed attempts to login.</h2>";

        echo "  <table>
                    <tr>
                        <th>Username</th>
                        <th>Password</th>
                    </tr>";

        for ($i = 0; $i < $_SESSION['login_attempts_count']; $i++){
        echo "      <tr>
                        <td>". $_SESSION['login_attempts'][$i][0] ."</td>
                        <td>". $_SESSION['login_attempts'][$i][1] ."</td>
                    </tr>";
                
        }
        echo "</table>";
    }
?>