{if NOT $permission_add}
Access Denied!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Add Mod</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark.</p>
				<div class="table-responsive">
					<table class="table table-striped" id="group.details" cellpadding="3">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the name of the mod you are adding."></i>
									Mod Name 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="hidden" id="fromsub" value="" />
									<input type="text" TABINDEX=1 class="form-control" id="name" name="name" />
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
									<input type="text" TABINDEX=2 class="form-control" id="folder" name="folder" />
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
									<input type="text" TABINDEX=3 class="form-control" id="steam_universe" name="steam_universe" value="0" />
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
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input type="checkbox" id="enabled" name="enabled" value="1" TABINDEX=4 vspace="5px" checked="checked" class="form-check-input" checked=""> &nbsp;
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
									{sb_button text="Upload Mod Icon" onclick="childWindow=open('pages/admin.uploadicon.php','upload','resizable=yes,width=300,height=130');" class="save" id="upload"}
								</div>
								<div id="icon.msg" style="color:#CC0000;"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>		
								{sb_button text="Add Mod" onclick="ProcessMod();" class="ok" id="amod"}&nbsp;
								{sb_button text="Back" onclick="history.go(-1)" class="cancel" id="aback"}      
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}