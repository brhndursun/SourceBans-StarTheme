<div class="row">
	<div class="col-lg-6 mx-auto pt-3">
		<p class="text-center">
			<button class="btn btn-inverse-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			<i class="mdi mdi-magnify"></i>Advanced Search
			</button>
		</p>
		
		<div class="collapse table-responsive box-shadow-delayed py-3 px-2" id="collapseExample">
	  		<table style="width:90%;" class="table table-noborder table-sm m-auto">
			    <tr>
					<td width="8%" align="center">
					<div class="form-radio">
						<label class="form-check-label">
						<input type="radio" class="form-check-input" name="search_type" id="admin_" value="radiobutton"> Admin
						</label>
					</div>
			        <td width="66%">
						<select class="form-control" id="admin" onmouseup="$('admin_').checked = true" style="width: 100%;">
							{foreach from="$admin_list" item="admin}
								<option label="{$admin.user}" value="{$admin.aid}">{$admin.user}</option>
							{/foreach}
						</select>    
					</td>
				</tr>
				 <tr>
					<td align="center">
					<div class="form-radio">
						<label class="form-check-label">
						<input type="radio" class="form-check-input" name="search_type" id="message_" value="radiobutton"> Message
						</label>
					</div>
					</td>
			        <td><input class="form-control" type="text" id="message" value="" onmouseup="$('message_').checked = true" style="width:  100%;"></td>
				</tr>
			    <tr>
			        <td align="center">
					<div class="form-radio">
						<label class="form-check-label">
						<input type="radio" class="form-check-input" name="search_type" id="date_" value="radiobutton"> Date
						</label>
					</div>
					</td>
				    <td>
			        	<input class="form-control" style="display:inline-block;width:45px;" type="text" id="day" placeholder="DD" onmouseup="$('date_').checked = true" maxlength="2"> .
						<input class="form-control" style="display:inline-block;width:45px;" type="text" id="month" placeholder="MM" onmouseup="$('date_').checked = true" maxlength="2"> .
						<input class="form-control" style="display:inline-block;width:60px;" type="text" id="year" placeholder="YYYY" onmouseup="$('date_').checked = true" maxlength="4">&nbsp;
						<input class="form-control" style="display:inline-block;width:45px;" type="text" id="fhour" placeholder="00" onmouseup="$('date_').checked = true" maxlength="2"> :
						<input class="form-control" style="display:inline-block;width:45px;" type="text" id="fminute" placeholder="00" onmouseup="$('date_').checked = true" maxlength="2" >-&nbsp;
						<input class="form-control" style="display:inline-block;width:45px;" type="text" id="thour" placeholder="23" onmouseup="$('date_').checked = true" maxlength="2"> :
						<input class="form-control" style="display:inline-block;width:45px;" type="text" id="tminute" placeholder="59" onmouseup="$('date_').checked = true" maxlength="2">
			        </td>
			    </tr>
			    <tr>
			        <td align="center">
					<div class="form-radio">
						<label class="form-check-label">
						<input type="radio" class="form-check-input" name="search_type" id="type_" value="radiobutton"> Type
						</label>
					</div>
					</td>
			        <td>
						<select class="form-control" id="type" onmouseup="$('type_').checked = true" style="width: 100%;">
							<option label="Message" value="m">Message</option>
							<option label="Warning" value="w">Warning</option>
							<option label="Error" value="e">Error</option>
						</select>
					</td>
			    </tr>
			    <tr>
					<td colspan="1">&nbsp;</td>
			        <td colspan="2">{sb_button text="Search" onclick="search_log();" class="ok btn-success" id="searchbtn" submit=false}</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script>InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');</script>