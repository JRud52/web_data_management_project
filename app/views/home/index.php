<?php require_once '../app/views/templates/header.php' ?>
<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-12">

            <?php if (isset($data['message'])) {?>
            
				<div class="alert alert-success"><?=$data['message']?></div>
		    <?php } ?>

                <h1>Hey, <?=$_SESSION['username']?></h1>
                <p class="lead"> <?= date("F jS, Y"); ?></p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <p> Welcome to the website! </p>
        </div>
    </div>

    <?php require_once '../app/views/templates/footer.php' ?>
