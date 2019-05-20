<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Ban Features</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark</p>
				<br /><br />
				<div class="table-responsive">
					<form action="" method="post">
						<input type="hidden" name="settingsGroup" value="features" />
						<table class="table table-striped" id="group.features">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to enable the entire ban list to be publically downloaded and shared."></i>
										Make Export Bans Public
									</div>
								</td>
								<td width="20%">
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="export_public" type="checkbox" name="export_public" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to kick a player when a ban is posted."></i>
										Enable KickIt
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_kickit" type="checkbox" name="enable_kickit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to enable banning of whole steam community groups."></i>
										Enable Group Banning
									</div>
								</td>
								<td>
									<div align="left">
										{if $steamapi}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
										{else}
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_groupbanning" type="checkbox" name="enable_groupbanning" vspace="5px" class="form-check-input" disabled>&nbsp;
											<i class="input-helper"></i></label>
										</div>
										<br/>You haven't set a valid steamapi key in the config
										{/if}
									</div>
									<div id="enable_groupbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to enable banning all steam community friends of a player."></i>
										Enable Friends Banning
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_friendsbanning" type="checkbox" name="enable_friendsbanning" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_friendsbanning.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to enable the admin rehashing everytime an admin/group has been changed."></i>
										Enable Admin Rehashing
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_adminrehashing" type="checkbox" name="enable_adminrehashing" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_adminrehashing.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- added for steam login option mod -->
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to enable the Normal login option on the login form."></i>
										Enable Normal Login
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_steamlogin" type="checkbox" name="enable_steamlogin" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="enable_steamlogin.msg" class="badentry"></div>
								</td>
							</tr>
							<!-- end steam login option mod -->
							<tr>
								<td colspan="2" align="center">
									{sb_button text="Save Changes" class="ok btn-success" id="fsettings" submit=true}
									&nbsp;
									{sb_button text="Back" class="cancel btn-danger" id="fback"}
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="card-body">
				<h3>Theme Features</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark</p>
				<br /><br />
				<div class="table-responsive">
					<table class="table table-striped" id="group.features">
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to enable the DARK theme."></i>
									Enable Dark Mode
								</div>
							</td>
							<td width="50px"></td>
							<td width="160px"></td>
							<td width="20%">
								<div align="left">
									<div class="form-check">
										<label class="form-check-label">
										<input id="enable_darktheme" type="checkbox" name="enable_darktheme" vspace="5px" class="form-check-input">&nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enable_darktheme.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for navbar left to right gradient coloring..."></i>
									Navbar Gradient Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00e4d0','gradLeft','--nav-grad-left');SyncInputs('#5983e8','gradRight','--nav-grad-right');"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_gradRight" id="i_gradRight" class="form-control text-center form-control-sm" style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
									<input type="text" name="i_gradLeft" id="i_gradLeft" class="form-control text-center form-control-sm"  style="float:right; width:80px;" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="gradLeft" id="gradLeft" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-left')">
									<input type="color" name="gradRight" id="gradRight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--nav-grad-right')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for primary coloring"></i>
									Primary Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#308ee0','colorPrimary','--primary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorPrimary" id="i_colorPrimary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorPrimary" id="colorPrimary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--primary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for secondary coloring"></i>
									Secondary Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e5e5e5','colorSecondary','--secondary')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSecondary" id="i_colorSecondary" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSecondary" id="colorSecondary" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--secondary')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for success coloring"></i>
									Success Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#00ce68','colorSuccess','--success')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorSuccess" id="i_colorSuccess" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorSuccess" id="colorSuccess" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--success')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for info coloring"></i>
									Info Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#8862e0','colorInfo','--info')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorInfo" id="i_colorInfo" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorInfo" id="colorInfo" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--info')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for warning coloring"></i>
									Warning Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#ffaf00','colorWarning','--warning')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorWarning" id="i_colorWarning" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorWarning" id="colorWarning" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--warning')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for danger coloring"></i>
									Danger Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#e65251','colorDanger','--danger')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDanger" id="i_colorDanger" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDanger" id="colorDanger" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--danger')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for light coloring"></i>
									Light Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#f3f5f6','colorLight','light')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorLight" id="i_colorLight" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorLight" id="colorLight" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--light')">
								</div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="top" title="This color is for dark coloring"></i>
									Dark Color
								</div>
							</td>
							<td>
								<button class="btn btn-primary btn-sm" style="padding:0.2rem 0.81rem;" onclick="SyncInputs('#424964','colorDark','--dark')"><i class="mdi mdi-restore"></i></button>
							</td>
							<td>
								<div align="right">
									<input type="text" name="i_colorDark" id="i_colorDark" class="form-control text-center form-control-sm" style="width:160px;" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
							<td>
								<div align="left">
									<input type="color" name="colorDark" id="colorDark" value="#ff0000" onchange="SyncInputs(this.value,this.name,'--dark')">
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								{php} include("./themes/star/customizeTheme.php");{/php}
								<button name="themeChanges" class="btn ok btn-success" onclick="SaveThemeChanges()">Save Theme Changes</button>
								&nbsp;
								{sb_button text="Back" class="cancel btn-danger" id="fback"}
							</td>
						</tr>
						<tr>
							<td colspan="4" align="center">
								<button class="btn btn-primary">Primary</button>
								<button class="btn btn-secondary">Secondary</button>
								<button class="btn btn-success">Success</button>
								<button class="btn btn-info">Info</button>
								<button class="btn btn-warning">Warning</button>
								<button class="btn btn-danger">Danger</button>
								<button class="btn btn-light">Light</button>
								<button class="btn btn-dark">Dark</button>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>