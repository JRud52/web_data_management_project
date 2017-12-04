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
					  <label for="username" class="col-lg-2 control-label">Name</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="username" placeholder="Username" required>
					  </div>

					  <label for="birthdate" class="col-lg-2 control-label">Birthdate</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="birthdate" placeholder="Birthdate" required>
					  </div>

                      <label for="email" class="col-lg-2 control-label">Email (algomau.ca)</label>
					  <div class="col-lg-10">
						<input type="email" class="form-control" name="email" placeholder="Email" onChange='validateEmail(this.value);' id='email-field' required>
					  </div>

                      <label for="birthdate" class="col-lg-2 control-label">Phone Number</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="birthdate" placeholder="Birthdate" required>
					  </div>

                    <!-- Quebec doesn't count cause they don't even want to be part of Canada.  -->
                    <div class="col-lg-10">
						<label for="province" class="col-lg-2 control-label">Province</label>
					  <select class="form-control" id="province">
                            <option value="">Please Select a Province</option>
							<option value="Ontario">Ontario</option>
							<option value="Alberta">Alberta</option>
							<option value="Manitoba">Manitoba</option>
                            <option value="Saskatchewan">Saskatchewan</option>
                            <option value="Newfoundland">Newfoundland</option>
                            <option value="New Brunswick">New Brunswick</option>
                            <option value="Prince Edward Island">Prince Edward Island</option>
                            <option value="Nova Scotia">Nova Scotia</option>
                            <option value="British Columbia">British Columbia</option>
						</select>
                        </div>

                        <div class="col-lg-10">
                            <label for="city" class="col-lg-2 control-label">City</label>
                            <select class="form-control" id="city">
                            </select>
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
			$(document).on("change", '#province', function(e) {
                var province_value = this.value;
                
                $.ajax({
                    type: "POST",
                    data: {province: province_value},
                    url: '/profile/get_cities',
                    dataType: 'json',
                    contentType: "application/json; charset=utf-8",
                    success: function(json) {

                        console.log('asdfadsfasfda');
    
                        var $el = $("#city");
                        $el.empty(); // remove old options
                        $el.append($("<option></option>")
                                .attr("value", '').text('Please Select'));
                        $.each(json, function(value, key) {
                            $el.append($("<option></option>")
                                    .attr("value", value).text(key));
                        });	
                    }
                });
            });
		</script>

    <?php require_once '../app/views/templates/footer.php' ?>

    <script src='/js/email_validation.js'></script>
