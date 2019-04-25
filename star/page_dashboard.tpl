<div class="row purchace-popup">
	<div class="col-12">
		<span class="d-block align-items-center">
		{$dashboard_text}
		</span>
	</div>
</div>
<div class="grid-margin">
	<div class="card card-statistics">
		<div class="row">
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 card-col">
				<div class="card-statistics">
					<div class="card-body">
						<div class="clearfix">
							<i class="mdi float-left mdi-server text-danger icon-lg" data-aos="zoom-in" data-aos-delay="100"></i>
							<p class="mb-0 text-right" data-aos="flip-left" data-aos-delay="300">Total Servers</p>
							<div class="fluid-container">
								<h3 class="font-weight-medium text-right mb-0 timer count-number" data-aos="zoom-in" data-aos-delay="50" data-to="{$server_list|@count}" data-speed="1500"></h3>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 card-col">
				<div class="card-statistics">
					<div class="card-body">
						<div class="clearfix">
							<i class="mdi float-left mdi-block-helper text-warning icon-lg" data-aos="zoom-in" data-aos-delay="300"></i>
							<p class="mb-0 text-right" data-aos="flip-left" data-aos-delay="500">Total Bans</p>
							<div class="fluid-container">
								<h3 class="font-weight-medium text-right mb-0 timer count-number" data-aos="zoom-in" data-aos-delay="250" data-to="{$total_bans}" data-speed="1500"></h3>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 card-col">
				<div class="card-statistics">
					<div class="card-body">
						<div class="clearfix">
							<i class="mdi float-left mdi-microphone-off text-info icon-lg" data-aos="zoom-in" data-aos-delay="500"></i>
							<p class="mb-0 text-right" data-aos="flip-left" data-aos-delay="700">Total Comm Blocks</p>
							<div class="fluid-container">
								<h3 class="font-weight-medium text-right mb-0 timer count-number" data-aos="zoom-in" data-aos-delay="450" data-to="{$total_comms}" data-speed="1500"></h3>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 card-col">
				<div class="card-statistics">
					<div class="card-body">
						<div class="clearfix">
							<i class="mdi float-left mdi-minus-circle text-success icon-lg" data-aos="zoom-in" data-aos-delay="700"></i>
							<p class="mb-0 text-right" data-aos="flip-left" data-aos-delay="900">Total Stopped Connections</p>
							<div class="fluid-container">
								<h3 class="font-weight-medium text-right mb-0 timer count-number" data-aos="zoom-in" data-aos-delay="650" data-to="{$total_blocked}" data-speed="1500"></h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="front-servers" data-aos="zoom-out" data-aos-delay="50">
	{include file='page_servers.tpl'}
</div>
<div class="row">
	<div class="col-lg-12 grid-margin" data-aos="fade-out"  data-aos-delay="150">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title" style="margin-bottom:0px;">Latest Added Bans</h4>
				<p class="card-description">
					<code>Total bans:{$total_bans}</code>
				</p>
				<div class="table-responsive">
					<table class="table table-bordered table-striped table-hover tbl-sm">
						<thead>
							<tr>
								<th width="100px">
									MOD
								</th>
								<th width="120px">
									Date/Time
								</th>
								<th width="14%">
									Length
								</th>
								<th>
									Name
								</th>
								<th width="200px">
									Remaining Time
								</th>
							</tr>
						</thead>
						<tbody>
							{php} include("./themes/star/progress.php");{/php}
							{foreach from=$players_banned item=player key=index}
								
							<tr onclick="{$player.link_url}" style="cursor:pointer;" data-aos="zoom-in">
								<td class="font-weight-medium text-center">
									{if $player.icon == "web.png"}
									<i class="icon-md mdi mdi-earth"></i>
									{else}
									<img src="themes/star/images/games/{$player.icon}" class="img-ss" alt="MOD" title="MOD" />
									{/if}
								</td>
								<td>
									{$player.created}
								</td>
								<td>
									{if $player.unbanned}
										{if $player.ub_reason=="U"}
											<label class="badge badge-primary">
										{elseif $player.ub_reason=="E" || $player.ub_reason=="D"}
											<label class="badge badge-success">
										{/if}
									{elseif $player.length=="Permanent"}
										<label class="badge badge-danger">
									{else}
										<label class="badge badge-warning">
									{/if}
									{$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}</label>
								</td>
								<td>
									{if empty($player.short_name)}
										<i class="text-muted">no nickname present</i>
									{else}
										{$player.short_name|escape:'html'}
									{/if}
								</td>
								<td class="text-danger">
									<div class="progress">
										{if $player.unbanned}
											{if $player.ub_reason=="U"}
												<div class="progress-bar bg-primary progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
											{elseif $player.ub_reason=="E" || $player.ub_reason=="D"}
												<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
											{/if}
										{elseif $player.length=="Permanent"}
											<div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" aria-width="100"></div>
										{else}
											<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" aria-width="{math equation="( n - c ) / ( ( e - c ) / 100 )" e=$ban_times[$index].e c=$ban_times[$index].c n=$smarty.now}">
										{/if}
											</div>
									</div>
								</td>
							</tr>
						{/foreach}
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
</div>
<div class="row">
	<div class="col-lg-6 grid-margin" data-aos="fade-out" data-aos-delay="250">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title" style="margin-bottom:0px;">Latest Comm Blocks</h4>
				<p class="card-description">
					<code>Total blocks: {$total_comms}</code>
				</p>
				<div class="table-responsive">
					<table class="table table-bordered table-striped table-hover tbl-sm">
						<thead>
							<tr>
								<th width="100px">
									&nbsp;
								</th>
								<th width="120px">
									Date/Time
								</th>
								<th>
									Name
								</th>
								<th width="130px">
									Length
								</th>
							</tr>
						</thead>
						<tbody>
							{foreach from=$players_commed item=player}
							<tr onclick="{$player.link_url}" style="cursor:pointer;" height="16" data-aos="zoom-in">
								<td> 
									{if $player.type == "images/type_v.png"}
									<i class="icon-md mdi mdi-microphone-off"></i>
									{else}
									<i class="icon-md mdi mdi-pencil-off"></i>
									{/if}
								</td>
								<td>
									{$player.created}
								</td>
								<td>
									{if empty($player.short_name)}
									<i>no nickname present</i>
									{else}
									{$player.short_name|escape:'html'}
									{/if}
								</td>
								<td>
									{if $player.length=="Permanent"}
									<label class="badge badge-danger">
									{elseif $player.unbanned}
									{if $player.ub_reason=="U"}
									<label class="badge badge-primary">
									{elseif $player.ub_reason=="E"}
									<label class="badge badge-success">
									{elseif $player.ub_reason=="D"}
									<label class="badge badge-success">
									{/if}
									{else}
									<label class="badge badge-warning">
									{/if}
									{if $player.length|count_characters>0}{$player.length}{else}Session{/if}{if $player.unbanned} ({$player.ub_reason}){/if}</label>
								</td>
							</tr>
							{/foreach}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-6 grid-margin" data-aos="fade-out" id="test" data-aos-delay="550">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title" style="margin-bottom:0px;">Latest Players Blocked</h4>
				<p class="card-description">
					<code>Total Stopped: {$total_blocked}</code>
				</p>
				<div class="table-responsive">
					<table class="table table-bordered table-striped table-hover tbl-sm">
						<thead>
							<tr>
								<th width="100px">
									&nbsp;
								</th>
								<th>
									Date/Time
								</th>
								<th width="120px">
									Name
								</th>
							</tr>
						</thead>
						<tbody>
							{foreach from=$players_blocked item=player}
							<tr{if $dashboard_lognopopup} onclick="{$player.link_url}"{else} onclick="{$player.popup}" {/if} style="cursor: pointer;" id="{$player.server}" title="Querying Server Data..." data-aos="zoom-in">
							<td>
								<i class="icon-md mdi mdi-minus-circle"></i>
							</td>
							<td>
								{$player.date}
							</td>
							<td>
								{$player.short_name|escape:'html'}
							</td>
							</tr>
							{/foreach}
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>