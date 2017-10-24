<?php require_once '../app/views/templates/header.php' ?>
<div>
    <h2>There have been <?=$_SESSION['login_attempts_count']?> failed attempts to login.</h2>

    <table class='table table-striped table-condensed'>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                </tr>

    <?php for ($i = 0; $i < $_SESSION['login_attempts_count']; $i++){
        echo "<tr>
            <td>".$_SESSION['login_attempts'][$i][0]."</td>
            <td>".$_SESSION['login_attempts'][$i][1]."</td>
        </tr>";
    }?>
    </table>
</div>
