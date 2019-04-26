<div class="card" id="lostpassword">
	<div class="col-lg-5 mx-auto p-lg-4">
		<h4 class="card-title mb-4">
			Please type your email address in the box below to have your password reset. 
		</h4>
		<div class="auto-form-wrapper " id="login-content">
			<div id="msg-red" style="display:none;">
				<i>
				<img src="./images/warning.png" alt="Warning" />
				</i>
				<b>Error</b>
				<br />
				The email address you supplied is not registered on the system.</i>
			</div>
			<div id="msg-blue" style="display:none;">
				<i>
				<img src="./images/info.png" alt="Warning" />
				</i>
				<b>Information</b>
				<br />
				Please check your email inbox (and spam) for a link which will help you reset your password.</i>
			</div>
			<div class="form-group" id="loginPasswordDiv">
				<label class="label" for="email">Your E-Mail Address</label>
				<div class="input-group">
					<input type="text" class="form-control" id="email" name="password" value="">
				</div>
			</div>
			<div id="loginSubmit" class="form-group text-center">
				{sb_button text=Ok onclick="xajax_LostPassword($('email').value);" class="btn btn-primary submit-btn btn-block" id=alogin submit=false}
			</div>
		</div>
	</div>
</div>