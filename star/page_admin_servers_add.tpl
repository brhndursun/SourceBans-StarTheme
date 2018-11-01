{if not $permission_addserver}
Access Denied
{else}
<div class="row" id="add-group">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Server Details</h3>
				<p>
					For more information or help regarding a certain subject move your mouse over the question mark.
				</p>
				<br /><br />
				<input type="hidden" name="insert_type" value="add">
				<div class="table-responsive">
					<table class="table table-striped" id="group.details" cellpadding="3">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="This is the IP address to your server. You can also type a domain, if you have one setup."></i>
									Server IP/Domain
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="address" name="address" value="{$ip}" />
								</div>
								<div id="address.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" data-html="true" title="This is the port that the server is running off. <br /><br /><i>Default: 27015</i>"></i>
									Server Port
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=2 class="form-control" id="port" name="port" value="{if $port}{$port}{else}{27015}{/if}" />
								</div>
								<div id="port.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="This is your servers RCON password. This can be found in your server.cfg file next to <i>rcon_password</i>.<br /><br />This will be used to allow admins to administrate the server though the web interface."></i>
									RCON Password
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=3 class="form-control" id="rcon" name="rcon" value="{$rcon}" />
								</div>
								<div id="rcon.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Please re-type your rcon password to avoid 'typos'"></i>
									RCON Password (Confirm)
								</div>
							</td>
							<td>
								<div align="left">
									<input type="password" TABINDEX=4 class="form-control" id="rcon2" name="rcon2" value="{$rcon}" />
								</div>
								<div id="rcon2.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Select the mod that your server is currently running."></i>
									Server MOD 
								</div>
							</td>
							<td>
								<div align="left" id="admingroup">
									<select name="mod" TABINDEX=5 onchange="" id="mod" class="form-control">
										{if !$edit_server}
										<option value="-2">Please Select...</option>
										{/if}
										{foreach from="$modlist" item="mod"}
										<option value='{$mod.mid}'>{$mod.name}</option>
										{/foreach}
									</select>
								</div>
								<div id="mod.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Enables the server to be shown on the public servers list."></i>
									Enabled
								</div>
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="enabled" type="checkbox" name="enabled" vspace="5px" checked="checked" class="form-check-input"> &nbsp;
										<i class="input-helper"></i></label>
									</div>
								</div>
								<div id="enabled.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="middle">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-html="true" data-placement="bottom" title="Choose the groups to add this server to. Server groups are used for adding admins to specific sets of servers."></i>
									Server Groups 
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
						{foreach from="$grouplist" item="group"}
						<tr>
							<td valign="middle">&nbsp;
							</td>
							<td>
								<div align="left">
									<div class="form-check" id="loginRememberMeDiv">
										<label class="form-check-label">
										<input id="g_{$group.gid}" type="checkbox" name="groups[]" value="{$group.gid}" vspace="5px" class="form-check-input"> {$group.name}
										<i class="input-helper"></i></label>
									</div>
								</div>
							</td>
						</tr>
						{/foreach}
						<tr id="nsgroup" valign="top" class="badentry"> 		
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>
								{if $edit_server}
								{sb_button text=$submit_text onclick="process_edit_server();" class="ok" id="aserver" submit=false}
								{else}
								{sb_button text=$submit_text onclick="process_add_server();" class="ok" id="aserver" submit=false}
								{/if}
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
{/if}