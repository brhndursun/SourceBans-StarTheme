			</div>
		</div>
		<footer class="footer">
			<div class="container-fluid clearfix">
				<span class="d-block text-center text-sm-left d-sm-inline-block">
				<a href="https://sbpp.github.io/" target="_blank">SourceBans++</a> {$SB_VERSION}{$SB_REV}.
				Powered by <a href="http://www.sourcemod.net" target="_blank">SourceMod</a>
				</span><br>
				<span class="d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018
				<a href="http://www.bootstrapdash.com/" target="_blank">Bootstrapdash</a>. All rights reserved.</span>
				<span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-right">Hand-crafted & made with
				<i class="mdi mdi-heart text-danger"></i><br>
				{$SB_QUOTE}
				</span>
			</div>
		</footer>
	</div>
</div>
<script src="themes/{php}echo SB_THEME;{/php}/js/off-canvas.js"></script>
<script src="themes/{php}echo SB_THEME;{/php}/js/misc.js"></script>
<script src="themes/{php}echo SB_THEME;{/php}/js/countTo.js"></script>
{literal}
<script>
	document.getElementById("content_title").remove();
	function fixToolTip() {
		setTimeout(
		function() {
			var tooltips = document.getElementsByClassName("tool-tip");
			for(i=0;i<tooltips.length;i++)
			{
				tooltips[i].className+="tool-tip badge badge-primary";
			}
		}, 2000);
	}
	fixToolTip();
	var bc=document.getElementById("breadcrumb");
	var bc_explode = bc.innerHTML.split("»");
	var newbc="";
	for(i=1;i<bc_explode.length;i++)
	{
		newbc+="<li class=\"breadcrumb-item\">";
		newbc+=bc_explode[i]
		newbc+="</li>";
		newbc = newbc.replace("<b>", "");
		newbc = newbc.replace("</b>", "");
	}
	bc.innerHTML = newbc;
	//document.getElementById("breadcrumb").remove();
</script>
<script>
	AOS.init();
</script>
{/literal}
{*/body*}
{*/html*}