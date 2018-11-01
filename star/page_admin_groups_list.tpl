{if NOT $permission_listgroups}
Access Denied!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>Groups</h3>
				<p>Click on a group to view its permissions.</p>
				<br /><br />
				<!-- Web Admin Groups -->
				<div class="table-responsive" id="wag_collapseGroup">
					Web Admin Groups <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Total: {$web_group_count}</i>
					<table class="table">
						<thead>
							<tr>
								<th width="40%">Group Name</th>
								<th width="25%">Admins in group</th>
								<th width="30%">Action</th>
							</tr>
						</thead>
						{foreach from="$web_group_list" item="group" name="web_group"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#wad_{$group.gid}" aria-expanded="false" aria-controls="collapseExample">
							<td>{$group.name}</td>
							<td>{$web_admins[$smarty.foreach.web_group.index]}</td>
							<td> 
								{if $permission_editgroup}
								<a href="index.php?p=admin&c=groups&o=edit&type=web&id={$group.gid}">Edit</a>
								{/if}
								{if $permission_deletegroup}
								- <a href="#" onclick="RemoveGroup({$group.gid}, '{$group.name}', 'web');">Delete</a>
								{/if}
							</td>
						</tr>
						<tr>
							<td colspan="7" align="center" style="padding:0;">
								<div class="collapse col-sm-9" id="wad_{$group.gid}"  data-parent="#wag_collapseGroup">
									<table class="table tbl-sm">
										<thead>
											<tr>
												<th align="left" colspan="3">Group Details</th>
											</tr>
										</thead>
										<tr align="left">
											<td width="20%" >Permissions</td>
											<td >{$group.permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Members</td>
											<td >
												<table width="100%" cellspacing="0" cellpadding="0" class="listtable">
													{foreach from=$web_admins_list[$smarty.foreach.web_group.index] item="web_admin"}
													<tr>
														<td >{$web_admin.user}</td>
														{if $permission_editadmin}
														<td width="30%" ><a href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}" title="Edit Groups">Edit</a>
															- <a href="index.php?p=admin&c=admins&o=editgroup&id={$web_admin.aid}&wg=" title="Remove From Group">Remove</a>
														</td>
														{/if}
													</tr>
													{/foreach}
												</table>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
				</div>
				<br /><br />
				<!-- Server Admin Groups -->
				<div class="table-responsive" id="sag_collapseGroup">
					Server Admin Groups <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Total: {$server_admin_group_count}</i>
					<table class="table">
						<thead>
							<tr>
								<th width="40%">Group Name</th>
								<th width="25%">Admins in group</th>
								<th width="30%">Action</th>
							</tr>
						</thead>
						{foreach from="$server_group_list" item="group" name="server_admin_group"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#sag_{$group.id}" aria-expanded="false" aria-controls="collapseExample">
							<td>{$group.name}</td>
							<td>{$server_admins[$smarty.foreach.server_admin_group.index]}</td>
							<td> 
								{if $permission_editgroup}
								<a href="index.php?p=admin&c=groups&o=edit&type=srv&id={$group.id}">Edit</a>
								{/if}
								{if $permission_deletegroup}
								- <a href="#" onclick="RemoveGroup({$group.id}, '{$group.name}', 'srv');">Delete</a>
								{/if}
							</td>
						</tr>
						<tr>
							<td colspan="7" align="center" style="padding:0;">
								<div class="collapse col-sm-9" id="sag_{$group.id}"  data-parent="#sag_collapseGroup">
									<table class="table tbl-sm">
										<tr>
											<td align="left" colspan="3">
												Group Details          
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Permissions</td>
											<td >{$group.permissions|replace:"&bull;":"<span style=\"color:#1b75d1;\">&bull;</span>"}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Members</td>
											<td >
												<table width="100%" cellspacing="0" cellpadding="0" class="listtable">
													{foreach from=$server_admins_list[$smarty.foreach.server_admin_group.index] item="server_admin"}
													<tr>
														<td>{$server_admin.user}</td>
														{if $permission_editadmin}
														<td width="30%" ><a href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}" title="Edit Groups">Edit</a>
															- <a href="index.php?p=admin&c=admins&o=editgroup&id={$server_admin.aid}&sg=" title="Remove From Group">Remove</a>
														</td>
														{/if}
													</tr>
													{/foreach}
												</table>
											</td>
										</tr>
										<tr align="left">
											<td width="20%" >Overrides</td>
											<td >
												<table width="100%" cellspacing="0" cellpadding="0" class="listtable">
													<tr>
														<td>Type</td>
														<td>Name</td>
														<td>Access</td>
													</tr>
													{foreach from=$server_overrides_list[$smarty.foreach.server_admin_group.index] item="override"}
													<tr>
														<td width="60%">{$override.type}</td>
														<td width="60%">{$override.name|htmlspecialchars}</td>
														<td width="60%">{$override.access}</td>
													</tr>
													{/foreach}
												</table>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
				</div>
				<br /><br />
				<!-- Server Groups -->
				<div class="table-responsive" id="sg_collapseGroup">
					Server Groups <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Total: {$server_group_count}</i>
					<table class="table">
						<thead>
							<tr>
								<th width="40%">Group Name</th>
								<th width="25%">Servers in group</th>
								<th width="30%">Action</th>
							</tr>
						</thead>
						{foreach from="$server_list" item="group" name="server_group"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#sg_{$group.gid}" aria-expanded="false" aria-controls="collapseExample">
							<td>{$group.name}</td>
							<td>{$server_counts[$smarty.foreach.server_group.index]}</td>
							<td>   
								{if $permission_editgroup}
								<a href="index.php?p=admin&c=groups&o=edit&type=server&id={$group.gid}">Edit</a>
								{/if}
								{if $permission_deletegroup}
								- <a href="#" onclick="RemoveGroup({$group.gid}, '{$group.name}', 'server');">Delete</a>
								{/if}        
							</td>
						</tr>
						<tr>
							<td colspan="7" align="center" style="padding:0;">
								<div class="collapse col-sm-9" id="sg_{$group.gid}"  data-parent="#sg_collapseGroup">
									<table class="table tbl-sm">
										<tr>
											<td align="left" colspan="3">Servers in this group</td>
										</tr>
										<tr align="left">
											<td width="20%" >Server Names</td>
											<td  id="servers_{$group.gid}">
												Please Wait!
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
{/if}