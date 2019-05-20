<div class="row">
	<div class="col-lg-12 grid-margin">
		<div class="card">
			<div class="card-body">
				<form action="" method="post">
					<input type="hidden" name="settingsGroup" value="mainsettings" />
					<h3>Main Settings</h3>
					<p>For more information or help regarding a certain subject move your mouse over the question mark.</p>
					<br /><br />
					<div class="table-responsive">
						<table class="table table-striped">
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Define the title shown in the title of your browser."></i>
										Title 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=1 class="form-control" id="template_title" name="template_title" value="{$config_title}" />
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Here you can define a new location for the logo, so you can use your own image."></i>
										Path to logo 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=2 class="form-control" id="template_logo" name="template_logo" value="{$config_logo}" />
										<p class="mt-1 mb-0">For mini logo, add &quot;-mini&quot; at the end of the file name. <code>sb-logo.png &gt; sb-logo-mini.png</code></p>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Define the shortest length a password can be."></i>
										Min password length 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=3 class="form-control" id="config_password_minlength" name="config_password_minlength" value="{$config_min_password}" />
									</div>
									<div id="minpasslength.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Here you can change the date format, displayed in the banlist and other pages."></i>
										Date format 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=4 class="form-control" id="config_dateformat" name="config_dateformat" value="{$config_dateformat}" />
										<a href="http://www.php.net/date" target="_blank">See: PHP date()</a>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to enable the debugmode permanently."></i>
										Debugmode
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="config_debug" type="checkbox" TABINDEX=6 name="config_debug" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Dashboard Settings</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Set the title for the dashboard introduction."></i>
										Intro Title 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=7 class="form-control" id="dash_intro_title" name="dash_intro_title" value="{$config_dash_title}" />
									</div>
									<div id="dash.intro.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Set the text for the dashboard introduction."></i>
										Intro Text 
									</div>
								</td>
								<td>
									<div align="left">  </div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2"> <textarea TABINDEX=6 cols="80" rows="20" id="dash_intro_text" name="dash_intro_text">{$config_dash_text}</textarea>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to disable the log info popup and use direct link."></i>
										Disable Log Popup
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="dash_nopopup" type="checkbox" TABINDEX=8 name="dash_nopopup" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Page Settings</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to enable the protest ban page."></i>
										Enable Protest Ban
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_protest" type="checkbox" TABINDEX=9 name="enable_protest" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to enable the submit ban page."></i>
										Enable Submit Ban
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_submit" type="checkbox" TABINDEX=10 name="enable_submit" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to enable the commslist page."></i>
										Enable Commslist
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="enable_commslist" type="checkbox" TABINDEX=10 name="enable_commslist" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box to only send the protest notification email to the admin who banned the protesting player."></i>
										Only Send One Email
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="protest_emailonlyinvolved" type="checkbox" TABINDEX=9 name="protest_emailonlyinvolved" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose the page that will be the first page people will see."></i>
										Default Page
									</div>
								</td>
								<td>
									<div align="left">
										<select class="form-control" TABINDEX=11 name="default_page" id="default_page">
											<option value="0">Dashboard</option>
											<option value="1">Ban List</option>
											<option value="2">Servers</option>
											<option value="3">Submit a ban</option>
											<option value="4">Protest a ban</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Click this button, to clean the themes_c folder."></i>
										Clear Cache
									</div>
								</td>
								<td>
									<div align="left">
										{sb_button text="Clear Cache" onclick="xajax_ClearCache();" class="cancel" id="clearcache" submit=false}
									</div>
									<div id="clearcache.msg"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">
									<h3>Banlist Settings</h3>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Choose how many items to show on each page."></i>
										Items Per Page 
									</div>
								</td>
								<td>
									<div align="left">
										<input type="text" TABINDEX=12 class="form-control" id="banlist_bansperpage" name="banlist_bansperpage" value="{$config_bans_per_page}" />
									</div>
									<div id="bansperpage.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to hide the name of the admin in the baninfo."></i>
										Hide Admin Name
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideadmname" type="checkbox" TABINDEX=13 name="banlist_hideadmname" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideadmname.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you don't want to display the country out of an IP in the banlist. Use if you encounter display problems."></i>
										No Country Research
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_nocountryfetch" type="checkbox" TABINDEX=14 name="banlist_nocountryfetch" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_nocountryfetch.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Check this box, if you want to hide the player IP from the public."></i>
										Hide Player IP
									</div>
								</td>
								<td>
									<div align="left">
										<div class="form-check">
											<label class="form-check-label">
											<input id="banlist_hideplayerips" type="checkbox" TABINDEX=15 name="banlist_hideplayerips" vspace="5px" class="form-check-input">&nbsp;
											<i class="input-helper"></i></label>
										</div>
									</div>
									<div id="banlist_hideplayerips.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top">
									<div class="rowdesc">
										<i class="text-primary mdi mdi-help-circle" data-toggle="tooltip" data-placement="bottom" title="Type the custom banreasons you want to appear in the dropdown menu."></i>
										Custom Banreasons
									</div>
								</td>
								<td>
									<div align="left">
										<table width="100%" border="0" style="border-collapse:collapse;" id="custom.reasons" name="custom.reasons">
											{foreach from="$bans_customreason" item="creason"}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]" value="{$creason}"/></td>
											</tr>
											{/foreach}
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
											<tr>
												<td><input type="text" class="form-control" name="bans_customreason[]" id="bans_customreason[]"/></td>
											</tr>
										</table>
										<table>
											<tr>
												<td>
													<a href="javascript:void(0)" onclick="MoreFieldsNewCss();" title="Add more fields" class="btn btn-primary"> Add Fields</a>
												</td>
											</tr>
										</table>
									</div>
									<div id="bans_customreason.msg" class="badentry"></div>
								</td>
							</tr>
							<tr>
								<td valign="top" colspan="2">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>
									{sb_button text="Save Changes" class="ok btn-success" id="asettings" submit=true}
									&nbsp;
									{sb_button text="Back" class="cancel btn-danger" id="aback"}
								</td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>$('sel_timezoneoffset').value = "{$config_time}";</script>
{literal}
<script type="text/javascript">
	function MoreFieldsNewCss()
	{
		var t = document.getElementById("custom.reasons");
		var tr = t.insertRow("-1");
		var td = tr.insertCell("-1");
		var inp = document.createElement("input");
		inp.setAttribute("type","text");
		inp.className = "submit-fields form-control";
		inp.setAttribute("name","bans_customreason[]");
		inp.setAttribute("id","bans_customreason[]");
		td.appendChild(inp);
	}
</script>
{/literal}