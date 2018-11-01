{if NOT $permission_addgroup}
Access Denied!
{else}
<div class="row" id="add-group">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>New Groups</h3>
				<div class="table-responsive" id="group.details">
					<table class="table table-striped">
						<tr>
							<td valign="top" width="35%">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the name of the new group you want to create."></i>
									Group Name 
								</div>
							</td>
							<td>
								<div align="left">
									<input type="text" TABINDEX=1 class="form-control" id="groupname" name="groupname" />
								</div>
								<div id="name.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td valign="top">
								<div class="rowdesc">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="This defines the type of group you are about to create. This helps identify and catagorize the groups list."></i>
									Group Type 
								</div>
							</td>
							<td>
								<div align="left">
									<select onchange="UpdateGroupPermissionCheckBoxes()" TABINDEX=2 class="form-control" name="grouptype" id="grouptype">
										<option value="0">Please Select...</option>
										<option value="1">Web Admin Group</option>
										<option value="2">Server Admin Group</option>
										<option value="3">Server Group</option>
									</select>
								</div>
								<div id="type.msg" class="badentry"></div>
							</td>
						</tr>
						<tr>
							<td colspan="2" id="perms" valign="top" style="height:5px;overflow:hidden;"></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>      
								{sb_button text="Save Changes" onclick="ProcessGroup();" class="ok" id="agroup" submit=false}
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