<?php require_once '../app/views/templates/header.php' ?>

<?php
if ($_SESSION['acl'] != 3) {
    header('Location: /index');
}
?>

<div class='container'>
    <h2>Join Report</h2>

    <table class='table table-striped table-condensed'>
                <tr>
                    <th>Username</th>
                    <th>Birthdate</th>
                    <th>Phone Number</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Reminder Count</th>
                </tr>

    <?php foreach ($data['data'] as $item){?>
        <tr>
            <td><?=$item['username']?></td>
            <td><?=$item['birthdate']?></td>
            <td><?=$item['phone_number']?></td>
            <td><?=$item['first_name']?></td>
            <td><?=$item['last_name']?></td>
            <td><?=$item['email']?></td>
            <td><?=$item['reminder_count']?></td>
        </tr>
    <?php } ?>
    </table>
</div>

<?php require_once '../app/views/templates/footer.php' ?>