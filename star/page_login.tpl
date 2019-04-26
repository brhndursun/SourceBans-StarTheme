<div class="card">
	<div class="col-lg-4 mx-auto">
		<div class="auto-form-wrapper py-3 p-lg-4" id="login-content">
			-{if $steamlogin_show == 1}-
			<div class="form-group">
				<label class="label">Username</label>
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Username" id="loginUsername" name="username">
					<div class="input-group-append">
						<span class="input-group-text">
						<i class="mdi mdi-check-circle-outline"></i>
						</span>
					</div>
				</div>
				<label id="loginUsername.msg" class="label"></label>
			</div>
			<div class="form-group">
				<label class="label">Password</label>
				<div class="input-group">
					<input type="password" class="form-control" id="loginPassword" name="password" placeholder="*********">
					<div class="input-group-append">
						<span class="input-group-text">
						<i class="mdi mdi-check-circle-outline"></i>
						</span>
					</div>
				</div>
				<label id="loginPassword.msg" class="label"></label>
			</div>
			<div class="form-group text-center">-{sb_button text="Login" onclick=$redir class="btn btn-primary submit-btn btn-block" id="alogin" style="width: 100%; text-transform: uppercase;" submit=false}-
			</div>
			<div class="form-group d-flex justify-content-between">
				<div class="form-check" id="loginRememberMeDiv">
					<label class="form-check-label">
					<input id="loginRememberMe" type="checkbox" name="remember" value="checked" vspace="5px" class="form-check-input" checked=""> Keep me signed in
					<i class="input-helper"></i></label>
				</div>
				<a href="index.php?p=lostpassword" class="text-small forgot-password text-black">Forgot Password</a>
			</div>
			-{/if}-
			<div class="form-group text-center">
				<a href="steamopenid.php"><img class="mr-3" src="themes/star/images/loginsteam.png" alt=""></a>
			</div>
		</div>
	</div>
</div>
<script>
	$E('html').onkeydown = function(event){
	    var event = new Event(event);
	    if (event.key == 'enter' ) -{$redir}-
	};$('loginRememberMeDiv').onkeydown = function(event){
	    var event = new Event(event);
	    if (event.key == 'space' ) $('loginRememberMeDiv').checked = true;
	};$('button').onkeydown = function(event){
	    var event = new Event(event);
	    if (event.key == 'space' ) -{$redir}-
	};
</script>