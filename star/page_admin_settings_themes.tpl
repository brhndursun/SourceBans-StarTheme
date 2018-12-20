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
                     <div class="row">
                        <div class="col imgfix mx-auto" id="current-theme-screenshot" style="flex-grow: inherit !important;">{$theme_screenshot}</div>
                        <div class="col">
                           <div class="table-responsive align-items-start">
                              <table class="table table-sm">
                                 <tr>
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
                              </table>
                           </div>
                           <div id="theme.apply" class="text-right my-3">
                              <input type="button" class="btn secondary " disabled value="Apply Theme">
                           </div>
                        </div>
                     </div>
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