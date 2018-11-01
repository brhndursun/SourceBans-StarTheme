{if NOT $permission_addban}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>Ban Added</b><br />
	The new ban has been added to the system.<br /><br />
	<i>Redirecting back to bans page</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>Add Ban</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark.</p>
				<br /><br />
				<div id="banlist" class="table-responsive">
					<table id="group.details" class="table table-striped">
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the nickname of the person that you are banning."></i>
									Nickname 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="hidden" id="fromsub" value="" />
									<input type="text" TABINDEX=1 class="form-control"  id="nickname" name="nickname"/>
								</div>
								<div id="nick.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose whether to ban by Steam ID or IP address."></i>
									Ban Type 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="0">Steam ID</option>
										<option value="1">IP Address</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="The Steam ID or Community ID of the person to ban."></i>
									Steam ID / Community ID
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="steam" name="steam"/>
								</div>
								<div id="steam.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the IP address of the person you want to ban."></i>
									IP Address 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=3 class="form-control"  id="ip" name="ip"/>
								</div>
								<div id="ip.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Explain in detail, why this ban is being made."></i>
									Ban Reason 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- Select Reason -- </option>
										<optgroup label="Hacking">
											<option value="Aimbot">Aimbot</option>
											<option value="Antirecoil">Antirecoil</option>
											<option value="Wallhack">Wallhack</option>
											<option value="Spinhack">Spinhack</option>
											<option value="Multi-Hack">Multi-Hack</option>
											<option value="No Smoke">No Smoke</option>
											<option value="No Flash">No Flash</option>
										</optgroup>
										<optgroup label="Behavior">
											<option value="Team Killing">Team Killing</option>
											<option value="Team Flashing">Team Flashing</option>
											<option value="Spamming Mic/Chat">Spamming Mic/Chat</option>
											<option value="Inappropriate Spray">Inappropriate Spray</option>
											<option value="Inappropriate Language">Inappropriate Language</option>
											<option value="Inappropriate Name">Inappropriate Name</option>
											<option value="Ignoring Admins">Ignoring Admins</option>
											<option value="Team Stacking">Team Stacking</option>
										</optgroup>
										{if $customreason}
										<optgroup label="Custom">
											{foreach from="$customreason" item="creason"}
											<option value="{$creason}">{$creason}</option>
											{/foreach}
										</optgroup>
										{/if}
										<option value="other">Other Reason</option>
									</select>
									<div id="dreason" style="display:none;">
										<textarea class="form-control"  TABINDEX=4 cols="30" rows="5" id="txtReason" name="txtReason"></textarea>
									</div>
								</div>
								<div id="reason.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Select how long you want to ban this person for."></i>
									Ban Length 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control"  >
										<option value="0">Permanent</option>
										<optgroup label="minutes">
											<option value="1">1 minute</option>
											<option value="5">5 minutes</option>
											<option value="10">10 minutes</option>
											<option value="15">15 minutes</option>
											<option value="30">30 minutes</option>
											<option value="45">45 minutes</option>
										</optgroup>
										<optgroup label="hours">
											<option value="60">1 hour</option>
											<option value="120">2 hours</option>
											<option value="180">3 hours</option>
											<option value="240">4 hours</option>
											<option value="480">8 hours</option>
											<option value="720">12 hours</option>
										</optgroup>
										<optgroup label="days">
											<option value="1440">1 day</option>
											<option value="2880">2 days</option>
											<option value="4320">3 days</option>
											<option value="5760">4 days</option>
											<option value="7200">5 days</option>
											<option value="8640">6 days</option>
										</optgroup>
										<optgroup label="weeks">
											<option value="10080">1 week</option>
											<option value="20160">2 weeks</option>
											<option value="30240">3 weeks</option>
										</optgroup>
										<optgroup label="months">
											<option value="43200">1 month</option>
											<option value="86400">2 months</option>
											<option value="129600">3 months</option>
											<option value="259200">6 months</option>
											<option value="518400">12 months</option>
										</optgroup>
									</select>
								</div>
								<div id="length.msg" ></div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Click here to upload a demo with this ban submission."></i>
									Upload Demo
								</div>
							</td>
							<td>
								<div align="left">
									{sb_button text="Upload a demo" onclick="childWindow=open('pages/admin.uploaddemo.php','upload','resizable=no,width=300,height=130');" class="save" id="udemo" submit=false}
								</div>
								<div id="demo.msg" class="text-primary"></div>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{sb_button text="Add Ban" onclick="ProcessBan();" class="ok" id="aban" submit=false}
								&nbsp;
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