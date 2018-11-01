
        </ul>
      </nav>
<script>
	var elements = document.getElementById("js_fixme").getElementsByTagName("li");
    
    for(var i=1; i<elements.length; i++)
	{
        var hrf= elements[i].getElementsByTagName("a")[0].getAttribute("href");
        elements[i].getElementsByTagName("a")[0].setAttribute("class", "nav-link");
        if(hrf.includes("home"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-television\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("servers"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-server\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("banlist"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-do-not-disturb\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("commslist"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-microphone-off\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("submit"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-alert\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("protest"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-lock-open\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
        else if(hrf.includes("admin"))
        	elements[i].getElementsByTagName("a")[0].innerHTML="<i class=\"menu-icon mdi mdi-settings\"></i><span class=\"menu-title\">"+elements[i].getElementsByTagName("a")[0].innerHTML+"</span>";
    }
</script>
<div class="main-panel">
	<div class="content-wrapper">