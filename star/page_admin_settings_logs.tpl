<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<h3>System Log {$clear_logs|replace:'href':'class="btn btn-outline-primary btn-rounded btn-fw" href'|replace:'(':''|replace:')':''}</h4></h3>
				<p>Click on a row to see more details about the event.</p>
				<br /><br />
				{php} require (TEMPLATES_PATH . "/admin.log.search.php");{/php}
				<div id="banlist-nav_logs" class="btn btn-inverse-light  btn-rounded btn-fw m-xl-2">{$page_numbers}</div>
				<br /><br />
				<div class="table-responsive" id="loglist">
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
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
</script>
{literal}
<script type="text/javascript">
	var s_obj = document.getElementById("banlist-nav_logs").getElementsByTagName("select")[0];
	if(s_obj)
	{
		s_obj.className += "btn btn-outline-primary btn-rounded btn-fw";
		s_obj.style.minWidth = "auto";
		s_obj.style.height = "24px";
		s_obj.style.padding = "0px 12px";
	}
	var b_objs = document.getElementById("banlist-nav_logs").getElementsByTagName("a");
		for(i = 0;i<b_objs.length;i++)
		{
			if(b_objs[i].innerHTML.indexOf("next")!=-1)
			{
				var a_href = b_objs[i].getAttribute("href");
				b_objs[i].innerHTML = '<button type="button" onclick="window.location.href=\''+a_href+'\'" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px; min-width:85px;">Next<i class="mdi mdi-chevron-right"></i></button>';
			}
			if(b_objs[i].innerHTML.indexOf("prev")!=-1)
			{
				var a_href = b_objs[i].getAttribute("href");
				b_objs[i].innerHTML = '<button type="button" onclick="window.location.href=\''+a_href+'\'" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px; min-width:85px;"><i class="mdi mdi-chevron-left"></i>Prev</button>';
			}
		}
</script>
{/literal}