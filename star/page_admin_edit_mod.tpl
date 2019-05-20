<form action="" method="post">
	<div class="row">
		<div class="col-lg-12 grid-margin">
			<div class="card">
				<div class="card-body">
					<h3>Mod Details</h3>
					<p>
						For more information or help regarding a certain subject move your mouse over the question mark.
					</p>
					<div class="table-responsive">
						<input type="hidden" name="insert_type" value="add">
						<table class="table" id="group.details" cellpadding="3">
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the name of the mod you are adding."></i>
										Mod Name 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="hidden" id="icon_hid" name="icon_hid" value="{$mod_icon}">
										<input type="text" TABINDEX=1 class="form-control" id="name" name="name" value="{$name}" />
									</div>
									<div id="name.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the name of this mods folder. For example, Counter-Strike: Source's mod folder is 'cstrike'"></i>
										Mod Folder 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="folder" name="folder" value="{$folder}" />
									</div>
									<div id="folder.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc"><i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="(STEAM_<b>X</b>:Y:Z) Some games display the steamid differently than others. Type the first number in the SteamID (<b>X</b>) depending on how it's rendered by this mod. (Default: 0)."></i>Steam Universe Number</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="steam_universe" name="steam_universe" value="{$steam_universe}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Select if this mod is enabled and assignable to bans and servers."></i>Enabled
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-group d-flex justify-content-between">
											<div class="form-check form-check-flat mt-0" id="loginRememberMeDiv">
												<label class="form-check-label">
												<input id="loginRememberMe" type="checkbox" id="enabled" name="enabled" value="1" TABINDEX=4 vspace="5px" checked="checked" class="form-check-input" checked=""> &nbsp;
												<i class="input-helper"></i></label>
											</div>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" width="35%">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Click here to upload an icon to associate with this mod."></i>Upload Icon
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="Upload MOD Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save btn-secondary" id="upload" submit=false} 
									</div>
									<div id="icon.msg" class="badentry" style="display:block;">
										{if $mod_icon}
										Uploaded: <b>{$mod_icon}</b>
										{/if}
									</div>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>      
									{sb_button text="Save Changes" class="ok btn-success" id="editmod" submit=true}
									&nbsp;
									{sb_button text="Back" onclick="history.go(-1)" class="cancel btn-danger" id="back" submit=false} 
								</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>