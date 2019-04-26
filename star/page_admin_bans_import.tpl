{if NOT $permission_import}
Access Denied!
{else}
<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body" id="add-group1">
				<h3>Import Bans</h3>
				<p>For more information or help regarding a certain subject move your mouse over the question mark.</p>
				<br /><br />
				<div class="table-responsive">
					<form action="" method="post" enctype="multipart/form-data">
						<input type="hidden" name="action" value="importBans" />
						<table class="table table-striped" id="group.details">
							<tr>
								<td>
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Select the banned_users.cfg or banned_ip.cfg file to upload and add bans."></i>
										File 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="file" TABINDEX=1 class="form-control" id="importFile" name="importFile" />
									</div>
									<div id="file.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="right" title="Check this box, if you want to get the names of the players from their steam community profile.(just works with banned_users.cfg)"></i>
									Get Names
								</td>
								<td>
									<div align="left">
										<div class="form-check" id="loginRememberMeDiv">
											<label class="form-check-label">
											<input id="friendsname" type="checkbox" name="friendsname" vspace="5px" class="form-check-input"> &nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="friendsname.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									{sb_button text="Import" class="ok" id="iban" submit=true}
									&nbsp;
									{sb_button text="Back" onclick="history.go(-1)" class="cancel" id="iback"}
								</td>
							</tr>
						</table>
					</form>
				</div>
				{if !$extreq}
				<script type="text/javascript">
					$('friendsname').disabled = true;
				</script>
				{/if}
			</div>
		</div>
	</div>
</div>
{/if}