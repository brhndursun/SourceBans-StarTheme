{if NOT $permission_addban}
Access Denied!
{else}
<div id="msg-green" style="display:none;">
	<i><img src="./images/yay.png" alt="Success" /></i>
	<b>Block Added</b><br />
	The new block has been added to the system.<br /><br />
	<i>Redirecting back to comms page</i>
</div>
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>Add Block</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark.</p>
				<br /><br />
				<div class="table-responsive">
					<table  id="group.details" class="table table-striped">
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose what to block - chat or voice"></i>
									Block Type 
								</div>
							</td>
							<td>
								<div align="left">
									<select id="type" name="type" TABINDEX=2 class="form-control">
										<option value="1">Voice</option>
										<option value="2">Chat</option>
										<option value="3">Chat &amp; Voice</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Explain in detail, why this block is being made."></i>
									Block Reason
								</div>
							</td>
							<td>
								<div align="left">
									<select id="listReason" name="listReason" TABINDEX=4 class="form-control"  onChange="changeReason(this[this.selectedIndex].value);">
										<option value="" selected> -- Select Reason -- </option>
										<optgroup label="Violation">
											<option value="Obscene language">Obscene language</option>
											<option value="Insult players">Insult players</option>
											<option value="Admin disrespect">Admin disrespect</option>
											<option value="Inappropriate Language">Inappropriate Language</option>
											<option value="Trading">Trading</option>
											<option value="Spam in chat/voice">Spam</option>
											<option value="Advertisement">Advertisement</option>
										</optgroup>
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
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Select how long you want to block this person for."></i>
									Block Length
								</div>
							</td>
							<td>
								<div align="left">
									<select id="banlength" TABINDEX=5 class="form-control">
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
							<td>&nbsp;</td>
							<td>
								{sb_button text="Add block" onclick="ProcessBan();" class="ok" id="aban" submit=false}
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