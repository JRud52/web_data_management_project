<?php require_once '../app/views/templates/header.php' ?>
<div class='container'>
    <h2>Activity Logs</h2>

    <table class='table table-striped table-condensed'>
                <tr>
                    <th>Date</th>
                    <th>Username</th>
                    <th>Login</th>
                    <th>Address</th>
                    <th>Success</th>
                </tr>

    <?php foreach ($data['logs'] as $log){?>
        <tr>
            <td><?=$log['date_time']?></td>
            <td><?=$log['username']?></td>
            <td><?=$log['is_login']?></td>
            <td><?=$log['address']?></td>
            <td><?=$log['success']?></td>
        </tr>
    <?php } ?>
    </table>
</div>
