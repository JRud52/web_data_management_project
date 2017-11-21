<?php require_once '../app/views/templates/header.php' ?>

<?php
if ($_SESSION['acl'] != 3) {
    header('Location: /index');
}
?>

<div class='container'>
    <h2>User Report</h2>

    <table class='table table-striped table-condensed'>
                <tr>
                    <th>Username</th>
                    <th>Password Hash</th>
                    <th>ACL</th>
                </tr>

    <?php foreach ($data['users'] as $user){?>
        <tr>
            <td><?=$user['username']?></td>
            <td><?=$user['password_hash']?></td>
            <td><?=$user['acl']?></td>
        </tr>
    <?php } ?>
    </table>
</div>

<?php require_once '../app/views/templates/footer.php' ?>