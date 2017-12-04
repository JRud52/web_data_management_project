<?php require_once '../app/views/templates/header.php' ?>

<div class='container'>
    <h2>Phone List</h2>

    <table class='table table-striped table-condensed'>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Phone Number</th>
                </tr>

    <?php foreach ($data['list'] as $item){?>
        <tr>
            <td><?=$item['first_name']?></td>
            <td><?=$item['last_name']?></td>
            <td><?=$item['phone_number']?></td>
        </tr>
    <?php } ?>
    </table>
</div>

<?php require_once '../app/views/templates/footer.php' ?>