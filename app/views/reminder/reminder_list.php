<?php require_once '../app/views/templates/header.php' ?>
<div class='container'>
    <h2>Reminders</h2>

    <?php foreach ($data['reminders'] as $reminder){?>
        <div class='card text-center border-primary mb-3'>
            <h4 class='card-header'><?=$reminder['subject']?></h4>
            <div class='card-body'>
                <p class='card-text'><?=$reminder['description']?></p>
                <a class='card-link' href='/reminder/update_reminder/<?=$reminder["id"]?>'>Update</a>
                <a class='card-link' href='/reminder/remove_reminder/<?=$reminder["id"]?>'>Remove</a>
            </div>
            <div class='card-footer'>
                <small class='card-text text-muted'>Created <?=$reminder['created']?></small>
            </div>
        </div>
    <?php } ?>

    <a class="btn btn-primary" href='/reminder/create_reminder'>Create new reminder</a>
</div>

<?php require_once '../app/views/templates/footer.php' ?>