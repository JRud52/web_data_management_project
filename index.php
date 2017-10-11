<?php 
    session_start();

    if (isset($_SESSION['authenticated'])) {
        header('Location:welcome.php');
    }

    if (isset($_POST['new_user'])){
        header('Location:new_user.php');
    }

    if (!isset($_SESSION['login_attempts_count'])) {
        $_SESSION['login_attempts_count'] = 0;
        $_SESSION['login_attempts'] = array();
    }

    if (isset($_POST['login'])) {

        $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "cosc";

            try {
                $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                $stmt = $conn->prepare("SELECT username, password_hash FROM users WHERE username='".$_POST['username']."'");
                $stmt->execute();

                $stmt->setFetchMode(PDO::FETCH_ASSOC);
                $fetch_result = $stmt->fetch();

                if (count($fetch_result) == 0) {
                    echo "<h2>The information you provided is incorrect.</h2>";
                    $_SESSION['login_attempts_count'] += 1;
                    array_push($_SESSION['login_attempts'], array($_POST["username"], $_POST['password']));
                }
                else {
                    $hash = $fetch_result['password_hash'];

                    if (password_verify($_POST['password'], $hash)){
                        $_SESSION['authenticated'] = true;
                        $_SESSION['username'] = $_POST['username'];
                        $_SESSION['password'] = $hash;
                        $conn = null;
                        header('Location:welcome.php');
                    }
                    else {
                        echo "<h2>The information you provided is incorrect.</h2>";
                        $_SESSION['login_attempts_count'] += 1;
                        array_push($_SESSION['login_attempts'], array($_POST["username"], $_POST['password']));
                    }
                }
            }
            catch(PDOException $e){
                echo "Connection failed: " . $e->getMessage();
            }
            $conn = null;
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
        <button type="submit" name="new_user">Create New User</button>
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