<div class="row">
   <div class="col-lg-12 grid-margin">
      <div class="card">
         <div class="card-body">
            <h3>Themes</h3>
            <div class="row">
               <div id="current-theme-holder" class="col-lg-6">
                  <h4 class="lead">Selected Theme: <span id="theme.name">{$theme_name}</span></h4>
                  <div id="current-theme-details">
                     {literal}
                     <style>.imgfix > img { width:250px !important; height:170px !important;}</style>
                     {/literal}
                     <table class="table table-sm">
                        <tr>
                           <td rowspan="8" id="current-theme-screenshot" class="imgfix" style="width:260px;">{$theme_screenshot}</td>
                           <td><b>Theme Author:</b></td>
                        </tr>
                        <tr>
                           <td>
                              <div id="theme.auth">{$theme_author}</div>
                           </td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        </tr>
                        <tr>
                           <td><b>Theme Version:</b></td>
                        </tr>
                        <tr>
                           <td>
                              <div id="theme.vers">{$theme_version}</div>
                           </td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        </tr>
                        <tr>
                           <td><b>Theme Link:</b></td>
                        </tr>
                        <tr>
                           <td>
                              <div id="theme.link"><a href="{$theme_link}" target="_new">{$theme_link}</a></div>
                           </td>
                        </tr>
                        <tr>
                           <td colspan="2" align="right">
                              <div id="theme.apply"></div>
                           </td>
                        </tr>
                     </table>
                  </div>
               </div>
               <div class="col-lg-6">
                  <h4 class="lead">Available Themes</h4>
                  <p>Click a theme below to see details about it.</p>
                  <nav class="sidebar sidebar-themes" id="theme-list">
                     <ul class="nav">
                        {foreach from=$theme_list item=theme name=fe_themes}
                        <li class="nav-item {if $theme_name == $theme.name}active{/if}" id="t_{$smarty.foreach.fe_themes.index}" onclick="fixActive({$smarty.foreach.fe_themes.index});"><a href="javascript:void(0);" onclick="javascript:xajax_SelTheme('{$theme.dir}');" class="nav-link"><b>{$theme.name}</b></a></li>
                        {/foreach}
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
{literal}
<script type="text/javascript">
   function fixActive(num){
   	var obj = document.getElementById("theme-list").getElementsByTagName("li");
   	for(i = 0;i<obj.length;i++)
   	{
   		obj[i].removeClass("active");
   	}
   	obj[num].addClass("active");
   }
</script>
{/literal}