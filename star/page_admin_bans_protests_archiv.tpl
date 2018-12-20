{if NOT $permission_protests}
Access Denied!
{else}
<div id="protestsa" class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>Ban Protests Archive <i class="btn btn-outline-primary btn-rounded btn-fw" style="width:20px;height:20px;padding:0px;line-height:18px;">Total Archive:{$protest_count_archiv}</i></h3>
				<p>Click a player's nickname to view information about their ban</p>
				<br /><br />
				<div class="table-responsive">
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$aprotest_nav}
						</div>
					</div>
					<table class="table">
						<thead>
							<tr>
								<th>Nickname</th>
								<th>SteamID</th>
								<th>Action</th>
							</tr>
						</thead>
						{foreach from="$protest_list_archiv" item="protest"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_protestsa_{$protest.pid}" aria-expanded="false" aria-controls="collapseExample">
							<td class="toggler" style="border-bottom: solid 1px #ccc">{if $protest.archiv!=2}<a href="./index.php?p=banlist{if $protest.authid!=""}&advSearch={$protest.authid}&advType=steamid{else}&advSearch={$protest.ip}&advType=ip{/if}" title="Show ban">{$protest.name}</a>{else}<i><font color="#677882">ban removed</font></i>{/if}</td>
							<td style="border-bottom: solid 1px #ccc">{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}</td>
							<td style="border-bottom: solid 1px #ccc">
								{if $permission_editban}
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '2');">Restore</a> -
								<a href="#" onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '0');">Delete</a> -
								{/if}
								<a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}">Contact</a>
							</td>
						</tr>
						<tr id="pid_{$protest.pid}a" >
							<td id="ban_details_{$protest.pid}" style="padding:0;" colspan="4">
								<div class="collapse" id="expand_protestsa_{$protest.pid}" data-parent="#protestsa">
									<table class="table tbl-sm" width="100%">
										<tr>
											<td height="16" align="left" colspan="5">
												<b>Bandetails</b>
											</td>
										</tr>
										<tr align="left">
											<td height="16" align="left" class="listtable_1" colspan="2">
												<b>Archived because {$protest.archive}</b>
											</td>
											<td width="30%" rowspan="{if $protest.archiv == "2"}5{else}13{/if}" class="listtable_2">
											<div class="ban-edit">
												<ul class="list-arrow"  id="fix_banlinks">
													<li>{$protest.protaddcomment}</li>
												</ul>
											</div>
											</td>
										</tr>
										{if $protest.archiv!=2}
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Player</td>
											<td height="16" class="listtable_1">{$protest.name}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">SteamID</td>
											<td height="16" class="listtable_1">
												{if $protest.authid == ""}
												<i><font color="#677882">no steamid present</font></i>
												{else}
												{$protest.authid}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">IP address</td>
											<td height="16" class="listtable_1">
												{if $protest.ip == 'none' || $protest.ip == ''}
												<i><font color="#677882">no IP address present</font></i>
												{else}
												{$protest.ip}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Invoked on</td>
											<td height="16" class="listtable_1">{$protest.date}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">End Date</td>
											<td height="16" class="listtable_1">
												{if $protest.ends == 'never'}
												<i><font color="#677882">Not applicable.</font></i>
												{else}
												{$protest.ends}
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Reason</td>
											<td height="16" class="listtable_1">{$protest.ban_reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Banned by Admin</td>
											<td height="16" class="listtable_1">{$protest.admin}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Banned from</td>
											<td height="16" class="listtable_1">{$protest.server}</td>
										</tr>
										{/if}
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Archived by</td>
											<td height="" class="listtable_1">
												{if !empty($protest.archivedby)}
												{$protest.archivedby}
												{else}
												<i><font color="#677882">Admin deleted.</font></i>
												{/if}
											</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Protester IP</td>
											<td height="16" class="listtable_1">{$protest.pip}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Protested on</td>
											<td height="16" class="listtable_1">{$protest.datesubmitted}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Protest message</td>
											<td height="16" class="listtable_1">{$protest.reason}</td>
										</tr>
										<tr align="left">
											<td width="20%" height="16" class="listtable_1">Comments</td>
											<td height="60" class="listtable_1" colspan="3">
												{if $protest.commentdata != "None"}
												<table width="100%" border="0">
													{foreach from=$protest.commentdata item=commenta}
													{if $commenta.morecom}
													<tr>
														<td colspan="3">
															<hr />
														</td>
													</tr>
													{/if}
													<tr>
														<td>
															{if !empty($commenta.comname)}
															<b>{$commenta.comname|escape:'html'}</b>
															{else}
															<i><font color="#677882">Admin deleted</font></i>
															{/if}
														</td>
														<td align="right"><b>{$commenta.added}</b>
														</td>
														{if $commenta.editcomlink != ""}
														<td align="right" class="imgfix linkfix">
															{$commenta.editcomlink} {$commenta.delcomlink}
														</td>
														{/if}
													</tr>
													<tr>
														<td colspan="2" style="word-break: break-all;word-wrap: break-word;">
															{$commenta.commenttxt}
														</td>
													</tr>
													{if !empty($commenta.edittime)}
													<tr>
														<td colspan="3">
															<span style="font-size:6pt;color:grey;">last edit {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}{else}<i><font color="#677882">Admin deleted</font></i>{/if}</span>
														</td>
													</tr>
													{/if}
													{/foreach}
												</table>
												{/if}
												{if $protest.commentdata == "None"}
												{$protest.commentdata}
												{/if}
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
					<div class="col-12 my-2 text-xl-right text-lg-left">
						<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
							{$aprotest_nav}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>InitAccordion('tr.opener5', 'div.opener5', 'protests');</script>
{/if}