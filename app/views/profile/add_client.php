<?php require_once '../app/views/templates/header.php' ?>

<div class="container">
    <div class="page-header" id="banner">
        <div class="row">
            <div class="col-lg-12">
                <h1>Add a New Client</h1>
                <p class="lead"> <?= date("F jS, Y"); ?></p>
            </div>
        </div>
    </div>

		<?php if (isset($data['fail'])) {?>
				<div class="alert alert-danger"><?=$data['fail']?></div>
		<?php } ?>
        <?php if (isset($data['success'])) {?>
				<div class="alert alert-success"><?=$data['success']?></div>
		<?php } ?>

    <div class="row">
      <div class="col-lg-12">
        <form class="form-horizontal" action="/profile/add_client" method="post">
			    <fieldset>
					<div class="form-group">
					  <label for="name" class="col-lg-2 control-label">Name</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="name" placeholder="Name" required>
					  </div>

					  <label for="birthdate" class="col-lg-2 control-label">Birthdate</label>
					  <div class="col-lg-10">
						<input type="text" class="form-control" name="birthdate" placeholder="YYYY-MM-DD" required>
					  </div>

                      <label for="email" class="col-lg-2 control-label">Email (algomau.ca)</label>
					  <div class="col-lg-10">
						<input type="email" class="form-control" name="email" placeholder="@algomau.ca" onChange='validateEmail(this.value);' id='email-field' required>
					  </div>

                      <label for="phone_number" class="col-lg-2 control-label">Phone Number</label>
					  <div class="col-lg-10">
						<input type="phone" class="form-control" name="phone_number" placeholder="XXX-XXX-XXXX" required>
					  </div>

                    <!-- Quebec doesn't count cause they don't even want to be part of Canada.  -->
                    <div class="col-lg-10">
						<label for="province" class="col-lg-2 control-label">Province</label>
					    <select class="form-control" id="province" name='province' required>
                            <option value="">Please Select a Province</option>
							<option name="Ontario" value="Ontario">Ontario</option>
							<option name="Alberta" value="Alberta">Alberta</option>
							<option name="Manitoba" value="Manitoba">Manitoba</option>
                            <option name="Saskatchewan" value="Saskatchewan">Saskatchewan</option>
                            <option name="Newfoundland" value="Newfoundland">Newfoundland</option>
                            <option name="New Brunswick" value="New Brunswick">New Brunswick</option>
                            <option name="Prince Edward Island" value="Prince Edward Island">Prince Edward Island</option>
                            <option name="Nova Scotia" value="Nova Scotia">Nova Scotia</option>
                            <option name="British Columbia" value="British Columbia">British Columbia</option>
						</select>
                    </div>

                    <div class="col-lg-10">
                        <label for="city" class="col-lg-2 control-label">City</label>
                        <select class="form-control" id="city"  name='city' required>
                            <option name='Sault Ste Marie' value="Sault Ste Marie">Sault Ste Marie</option>
                            <option name='Sudbury' value="Sudbury">Sudbury</option>
                            <option name='Toronto' value="Toronto">Toronto</option>
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
                    url: 'profile/get_cities',
                    dataType: 'json',
                    contentType: "application/json; charset=utf-8",
                    success: function(json) {

                        console.log('why arent you working AJAX...');
    
                        var $el = $("#city");
                        $el.empty(); 
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
