<?php require_once '../app/views/templates/header.php' ?>
<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-12">
                <h1>Hey, <?=$_SESSION['username']?></h1>
                <p class="lead"> <?= date("F jS, Y"); ?></p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <p> <?=$data['message']?> </p>
            <a href="/reports/login_report" class="btn btn-primary">Show Reports</a>
            <a href="/reminder/reminder_list" class="btn btn-primary">Show Reminders</a>
        </div>
    </div>

    <?php require_once '../app/views/templates/footer.php' ?>
