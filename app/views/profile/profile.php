
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Please update Profile</h4>
            </div>

            <div class="modal-body">

                <div class="row">
                    <div class="col-lg-12">
                        <form class="form-horizontal" action="/login/register" method="post">
                            <fieldset>
                                <div class="form-group">
                                    <label for="username" class="col-lg-2 control-label">New Username</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" name="username" placeholder="Username" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-lg-2 control-label">New Password</label>
                                    <div class="col-lg-10">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required>
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

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Submit</button>
            </div>
        </div>
      
    </div>
</div>