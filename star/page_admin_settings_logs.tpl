<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>System Log {$clear_logs|replace:'href':'class="btn btn-outline-primary btn-rounded btn-fw" href'|replace:'(':''|replace:')':''}</h4></h3>
				<p>Click on a row to see more details about the event.</p>
				<br /><br />
				{php} require (TEMPLATES_PATH . "/admin.log.search.php");{/php}
				<div class="table-responsive" id="loglist">
				<div class="col-12 my-2 text-xl-right text-lg-left">
					<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">
						{$page_numbers}
					</div>
				</div>
					{literal}
					<style>
						.imgfix2 > img { width:16px !important; height:16px !important;}
					</style>
					{/literal}
					<table class="table table-hover table-sm">
						<thead>
							<tr>
								<th width="5%" class="listtable_top" align="center">Type</th>
								<th width="28%" class="listtable_top" align="center">Event</th>
								<th width="28%" class="listtable_top" align="center">User</th>
								<th class="listtable_top">Date/Time</th>
							</tr>
						</thead>
						{foreach from="$log_items" item="log" name="fe_log"}
						<tr style="cursor:pointer;" data-toggle="collapse" data-target="#expand_{$smarty.foreach.fe_log.index}" aria-expanded="false" aria-controls="collapseExample">
							<td align="center" class="imgfix2">{$log.type_img}</td>
							<td>{$log.title}</td>
							<td>{$log.user}</td>
							<td>{$log.date_str}</td>
						</tr>
						<tr></tr>
						<tr>
							<td colspan="7" align="center" style="padding:0;">
								<div class="collapse" id="expand_{$smarty.foreach.fe_log.index}" data-parent="#loglist">
									<table class="table tbl-sm" width="80%" style="width:80% !important;">
										<thead>
											<tr>
												<th align="left" colspan="3">
													Event Details
												</th>
											</tr>
										</thead>
										<tr align="left">
											<td width="20%" >Details</td>
											<td>{$log.message}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Parent Function</td>
											<td>{$log.function}</td>
										</tr>
										<tr align="left">
											<td width="20%" >Query String</td>
											<td>{textformat wrap=62 wrap_cut=true}{$log.query}{/textformat}</td>
										</tr>
										<tr align="left">
											<td width="20%" >IP</td>
											<td>{$log.host}</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						{/foreach}
					</table>
				<div class="col-12 my-2 text-xl-right text-lg-left">
					<div id="banlist-nav" class="btn btn-inverse-light  btn-rounded btn-fw p-1 p-md-2 p-xl-2">{$page_numbers}</div>
				</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
</script>