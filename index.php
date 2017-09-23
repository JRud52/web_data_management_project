<!doctype html>
  
<style>
    form {
        border: 3px solid #f2f2f2;
        max-width: 500px;
        margin: auto;
        padding: 16px;
    }

    input {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #2196F3;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        opacity: 0.8;
    }
</style>

<form action="#" method="post">
    <label><b>Username</b></label>
    <input type="text" class="textbox" placeholder="Enter Username" name="username" required>

    <label><b>Password</b></label>
    <input type="password" class="textbox" placeholder="Enter Password" name="password" required>

    <button type="submit">Login</button>
</form> 

<?php
    if ($_POST) {
        $passwords = array(
            "hello" => "world",
            "testing" => "123",
            "atari" => "2600",
            );

        if (array_key_exists($_POST["username"], $passwords) && $_POST["password"] == $passwords[$_POST["username"]]){
            echo "You are logged in as " . $_POST["username"] . "!";
        } else {
            echo "The information you provided is incorrect.";
        }
    }
?>