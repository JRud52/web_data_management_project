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
                        <?php if (isset($data['post_data'])) { ?>
					        <input type="text" class="form-control" name="name" placeholder="Name" value="<?= $data['post_data']['name']?>" required>
                        <?php } else { ?>
                            <input type="text" class="form-control" name="name" placeholder="Name" required>
                        <?php } ?>
					    </div>

					    <label for="birthdate" class="col-lg-2 control-label">Birthdate</label>
					    <div class="col-lg-10">
                        <?php if (isset($data['post_data'])) { ?>
						    <input type="text" class="form-control" name="birthdate" placeholder="YYYY-MM-DD" value="<?= $data['post_data']['birthdate']?>" required>
                        <?php } else { ?>
                            <input type="text" class="form-control" name="birthdate" placeholder="YYYY-MM-DD" required>
                            <?php } ?>
					    </div>

                        <label for="email" class="col-lg-2 control-label">Email (algomau.ca)</label>
					    <div class="col-lg-10">
                        <?php if (isset($data['post_data'])) { ?>
						    <input type="email" class="form-control" name="email" placeholder="@algomau.ca" onChange='validateEmail(this.value);' id='email-field' value="<?= $data['post_data']['email']?>" required>
                        <?php } else { ?>
                            <input type="email" class="form-control" name="email" placeholder="@algomau.ca" onChange='validateEmail(this.value);' id='email-field' required>
                            <?php } ?>
					    </div>

                        <label for="phone_number" class="col-lg-2 control-label">Phone Number</label>
					    <div class="col-lg-10">
                        <?php if (isset($data['post_data'])) { ?>
						    <input type="phone" class="form-control" name="phone_number" placeholder="XXX-XXX-XXXX" value="<?= $data['post_data']['phone_number']?>" required>
                        <?php } else { ?>
                            <input type="phone" class="form-control" name="phone_number" placeholder="XXX-XXX-XXXX" required>
                            <?php } ?>
					    </div>

                    <!-- Quebec doesn't count cause they don't even want to be part of Canada.  -->
                    <div class="col-lg-10">
						<label for="province" class="col-lg-2 control-label">Province</label>
					    <select class="form-control" id="province" name='province' required>
                            <option value="">Please Select a Province</option>
							<option name="Ontario" <?php if ($data['post_data']['province'] == 'Ontario') echo 'selected' ?> value="Ontario">Ontario</option>
							<option name="Alberta" <?php if ($data['post_data']['province'] == 'Alberta') echo 'selected' ?> value="Alberta">Alberta</option>
							<option name="Manitoba" <?php if ($data['post_data']['province'] == 'Manitoba') echo 'selected' ?> value="Manitoba">Manitoba</option>
                            <option name="Saskatchewan" <?php if ($data['post_data']['province'] == 'Saskatchewan') echo 'selected' ?> value="Saskatchewan">Saskatchewan</option>
                            <option name="Newfoundland" <?php if ($data['post_data']['province'] == 'Newfoundland') echo 'selected' ?> value="Newfoundland">Newfoundland</option>
                            <option name="New Brunswick" <?php if ($data['post_data']['province'] == 'New Brunswick') echo 'selected' ?> value="New Brunswick">New Brunswick</option>
                            <option name="Prince Edward Island" <?php if ($data['post_data']['province'] == 'Prince Edward Island') echo 'selected' ?> value="Prince Edward Island">Prince Edward Island</option>
                            <option name="Nova Scotia" <?php if ($data['post_data']['province'] == 'Nova Scotia') echo 'selected' ?> value="Nova Scotia">Nova Scotia</option>
                            <option name="British Columbia" <?php if ($data['post_data']['province'] == 'British Columbia') echo 'selected' ?> value="British Columbia">British Columbia</option>
						</select>
                    </div>

                    <div class="col-lg-10">
                        <label for="city" class="col-lg-2 control-label">City</label>
                        <select class="form-control" id="city"  name='city' required>
                            <option name='Sault Ste Marie' <?php if ($data['post_data']['city'] == 'Sault Ste Marie') echo 'selected' ?> value="Sault Ste Marie">Sault Ste Marie</option>
                            <option name='Sudbury' <?php if ($data['post_data']['city'] == 'Sudbury') echo 'selected' ?> value="Sudbury">Sudbury</option>
                            <option name='Toronto' <?php if ($data['post_data']['city'] == 'Toronto') echo 'selected' ?> value="Toronto">Toronto</option>
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
