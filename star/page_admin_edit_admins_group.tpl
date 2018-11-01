<form action="" method="post">
	<div id="admin-page-content">
		<div class="row">
			<div class="col-lg-12 grid-margin">
				<div class="card">
					<div class="card-body" id="add-group">
						<h3>Admin Groups</h3>
						<p>For more information or help regarding a certain subject move your mouse over the question mark.<br /><br />
							Choose the new groups that you want <b>{$group_admin_name}</b> to appear in.
						</p>
						<br /><br />
						<div class="table-responsive">
							<table class="table" id="group.details">
								<tr>
									<td valign="middle">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose the group you want this admin to appear in for web permissions"></i>
										Web Admin Group
									</td>
									<td>
										<div align="left" id="wadmingroup">
											<select name="wg" id="wg" class="form-control">
												<option value="-1">No Group</option>
												<optgroup label="Groups" style="font-weight:bold;">
													{foreach from=$web_lst item=wg}
													<option value="{$wg.gid}"{if $wg.gid == $group_admin_id} selected="selected"{/if}>{$wg.name}</option>
													{/foreach}
												</optgroup>
											</select>
										</div>
										<div id="wgroup.msg" class="badentry"></div>
									</td>
								</tr>
								<tr id="nsgroup" valign="top" style="height:5px;overflow:hidden;">
								</tr>
								<tr>
									<td valign="middle">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose the group you want this admin to appear in for server admin permissions"></i>
										Server Admin Group 
									</td>
									<td>
										<div align="left" id="wadmingroup">
											<select name="sg" id="sg" class="form-control">
												<option value="-1">No Group</option>
												<optgroup label="Groups" style="font-weight:bold;">
													{foreach from=$group_lst item=sg}
													<option value="{$sg.id}"{if $sg.id == $server_admin_group_id} selected="selected"{/if}>{$sg.name}</option>
													{/foreach}
												</optgroup>
											</select>
										</div>
										<div id="sgroup.msg" class="badentry"></div>
									</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>
										{sb_button text="Save Changes" class="ok" id="agroups" submit=true}
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
	</div>
</form>