<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>Admin Details</h3>
						<div class="table-responsive">
							<table id="group.details" class="table table-striped">
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="This is the username the admin will use to login-to their admin panel. Also this will identify the admin on any bans they make."></i>
										Admin Login 
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="adminname" name="adminname" value="{$user}" />
										</div>
										<div id="adminname.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="This is the admins 'STEAM' id. This must be set so that admins can use their admin rights ingame."></i>
										Admin STEAM ID
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="steam" name="steam" value="{$authid}" />
										</div>
										<div id="steam.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Set the admins e-mail address. This will be used for sending out any automated messages from the system, and for use when you forget your password."></i>
										Admin Email
									</td>
									<td>
										<div align="left">
											<input type="text" class="form-control" id="email" name="email" value="{$email}" />
										</div>
										<div id="email.msg" class="badentry"></div>
									</td>
								</tr>
								{if $change_pass}
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="The password the admin will need to access the admin panel."></i>
										Admin Password
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password" name="password" />
										</div>
										<div id="password.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type your password again to confirm."></i>
										Admin Password (confirm)
									</td>
									<td>
										<div align="left">
											<input type="password" class="form-control" id="password2" name="password2" />
										</div>
										<div id="password2.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td valign="top" >
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="If this box is checked, you will need to specify this password in the game server before you can use your admin rights."></i>
										Server Password <small>(<a href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords" title="SourceMod Password Info" target="_blank">More</a>)</small>
									</td>
									<td>
										<div class="row">
											<div class="form-group mt-2">
												<div class="form-check" id="loginRememberMeDiv">
													<label class="form-check-label">
													<input id="a_useserverpass" type="checkbox" name="a_useserverpass" vspace="5px" class="form-check-input" {if $a_spass} checked="checked"{/if} TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;"> &nbsp;
													<i class="input-helper"></i></label>
												</div>
											</div>
											<div class="col-sm-11">
												<input type="password" TABINDEX=7 class="form-control" name="a_serverpass" id="a_serverpass" {if !$a_spass} disabled="disabled"{/if} />
											</div>
											<div id="a_serverpass.msg" class="badentry"></div>
										</div>
										<div id="a_serverpass.msg" class="badentry"></div>
									</td>
								</tr>
								{/if}
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>
										{sb_button text="Save Changes" class="ok" id="editmod" submit=true}
										&nbsp;
										{sb_button text="Back" onclick="history.go(-1)" class="cancel" id="back" submit=false} 
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>