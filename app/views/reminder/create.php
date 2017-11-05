<?php require_once '../app/views/templates/header.php'?>

<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-12">
                <h1>Create Reminder</h1>
                <p class="lead"> <?= date("F jS, Y"); ?></p>
            </div>
        </div>
    </div>

    <div class="row">
			<div class="col-lg-12">
				<form class="form-horizontal" action="/reminder/create_reminder" method="post">
			    <fieldset>
						<input type="hidden" class="form-control" name="id" value="<?=$data['item']['id']?>" required>
						<div class="form-group">
							<label for="subject" class="col-lg-2 control-label">Subject</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="subject" value="<?=$data['item']['subject']?>" required>
							</div>
						</div>
						<div class="form-group">
							<label for="desc" class="col-lg-2 control-label">Description</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" name="desc" value="<?=$data['item']['description']?>" required>
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-10 col-lg-offset-2">
								<button type="submit" class="btn btn-primary">Create</button>
							</div>
						</div>
			    </fieldset>
				</form>
			</div>
    </div>

    <?php require_once '../app/views/templates/footer.php' ?>