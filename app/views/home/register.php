<?php require_once '../app/views/templates/header.php' ?>

<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-12">
                <h1>Create a User</h1>
                <p class="lead"> <?= date("F jS, Y"); ?></p>
            </div>
        </div>
    </div>

		<?php if (isset($data['message'])) {?>
				<div class="alert alert-danger"><?=$data['message']?></div>
		<?php } ?>

    <div class="row">
      <div class="col-lg-12">
        <form class="form-horizontal" action="/login/register" method="post">
			    <fieldset>
					<div class="form-group">
					  <label for="username" class="col-lg-2 control-label">New Username</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="username" placeholder="Username" required>
					  </div>

					  <label for="password" class="col-lg-2 control-label">New Password</label>
					  <div class="col-lg-10">
						<input type="password" class="form-control" name="password" placeholder="Password" required>
					  </div>

						<div class="col-lg-10">
						<label for="staff-type" class="col-lg-2 control-label">Staff Type</label>
					  <select class="form-control" id="staff-type">
							<option value="1">Staff</option>
							<option value="2">Manager</option>
							<option value="3">Admin</option>
						</select>
						</div>

						<div class="col-lg-10" id="manager-field">
						<label for="manager" class="col-lg-2 control-label">Manager</label>
						<input type=text class="form-control" name="manager" placeholder="Manager" required>
					  </div>

					</div>
					<div class="form-group">
					  <div class="col-lg-10 col-lg-offset-2">
						<button type="submit" class="btn btn-primary">Submit</button>
					  </div>
					</div>
			    </fieldset>
				</form>
      </div>
    </div>

		<script>
			$(document).ready(function(){
				$('#staff-type').on('change', function() {
					if ( this.value == '1')
					{
						$("#manager-field").show();
					}
					else
					{
						$("#manager-field").hide();
					}
				});
			});
		</script>

    <?php require_once '../app/views/templates/footer.php' ?>
