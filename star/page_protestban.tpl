<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h4 class="lead">Protest a ban</h4>
				<p>
					Before you proceed make sure you first check our banlist and search it by clicking <a href="index.php?p=banlist">here</a> if you are listed and for what reason.<br />
					If you do find yourself listed on the banlist and find the reason for this to be untrue you can write a protest.
				</p>
				{literal}
				<style>
					.form-group label{text-align:right;}
				</style>
				{/literal}
				<form action="index.php?p=protest" method="post">
					<p class="card-description">
						Your Details
					</p>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Ban Type</label>
								<div class="col-sm-9">
									<select class="form-control" name="Type" onChange="changeType(this[this.selectedIndex].value);">
										<option value="0">Steam ID</option>
										<option value="1">IP Address</option>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="steam.row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Your SteamID</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="SteamID" value="{$steam_id}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row" id="ip.row" style="display:none;">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Your IP</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="IP" value="{$ip}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Name</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="PlayerName" value="{$player_name}" />
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Reason why you should be unbanned <span class="text-danger">*</span>: <br>(Be as descriptive as possible) </td></label>
								<div class="col-sm-9">
									<textarea name="BanReason" cols="30" rows="5" class="form-control">{$reason}</textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label">Your Email</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="EmailAddr" value="{$player_email}"/>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group row">
								<label class="col-sm-3 col-form-label"><span class="text-danger">*</span> = Mandatory Field</label>
								<div class="col-sm-9">
									<input type="submit" name="alogin" class="btn btn-success" value="Submit">
								</div>
							</div>
						</div>
					</div>
					<input type="hidden" name="subprotest" value="1">
				</form>
				<p class="lead">What happens after you posted your protest?</p>
				<p>
					The admins will get notified of your protest. They will then review if the ban is conclusive. After reviewing you will get a reply, which usally means within 24 hours.<br /><br />
					<b>Note:</b> Sending emails with threats to our admins, scolding or shouting will not get you unbanned and in fact we will delete your protest right away! 
				</p>
			</div>
		</div>
	</div>
</div>