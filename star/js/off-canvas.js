(function($) {
	'use strict';
	$(function() {
		$('[data-toggle="offcanvas"]').on("click", function() {
			$('.sidebar-offcanvas').toggleClass('active')
		});
	});
	$(function() {
		$('[data-toggle="tooltip"]').tooltip()
	});
})(jQuery);

ButtonOver = function() { return false; };

function getElementsById(elementName, elementID) {
	var elementCollection = new Array();
	var allElements = document.getElementsByTagName(elementName);
	for (i = 0; i < allElements.length; i++) {
		if (allElements[i].id == elementID)
			elementCollection.push(allElements[i]);

	}
	return elementCollection;
}

var msg_obj = getElementsById("div", "msg-red-debug");
//var msg_obj = document.getElementsByTagName("div#msg-red-debug")[1];
for (i = 0; i < msg_obj.length; i++)
	msg_obj[i].className += "card-body bg-danger text-light";

var msg_obj = getElementsById("div", "msg-green-dbg");
//var msg_obj = document.getElementsByTagName("div#msg-red-debug")[1];
for (i = 0; i < msg_obj.length; i++)
	msg_obj[i].className += "card-body bg-warning text-light";

var tw_obj = getElementsById("div", "tabsWrapper");
for (i = 0; i < tw_obj.length; i++) {
	var tw = tw_obj[i];
	tw.addClass("mb-4");
	tw.getElementsByTagName("ul")[0].addClass("nav nav-pills nav-pills-primary nav-pills-icons justify-content-center");
	tw.getElementsByTagName("li")[0].addClass("nav-item");
	tw.getElementsByTagName("li")[1].addClass("nav-item");
	tw.getElementsByTagName("a")[0].addClass("nav-link");
	tw.getElementsByTagName("a")[1].addClass("nav-link");
}
// Fix: Display first item
if (document.getElementById("admin-page-content")) {
	var pageURL = window.location.href;
	if (pageURL.indexOf("c=groups&o=edit") != -1 || pageURL.indexOf("c=admins&o=editpermissions") != -1) {
		document.getElementById("admin-page-content").addClass("card");
		document.getElementById("add-group").addClass("card-body");

		var table_all = document.getElementsByTagName("table");
		for (var i = 0; i < table_all.length; i++) {
			table_all[i].addClass("table table-striped");
		}

		var inputbox_all = document.getElementsByTagName("input");
		for (var i = 0; i < inputbox_all.length; i++) {
			if (!inputbox_all[i].classList.contains('btn'))
				inputbox_all[i].addClass("form-control");
		}
		var select_all = document.getElementsByTagName("select");
		for (var i = 0; i < select_all.length; i++) {
			select_all[i].addClass("form-control");
		}

		var tip_all = document.getElementsByClassName("tip");
		for (var i = 0; i < tip_all.length; i++) {
			tip_all[i].remove();
		}

	}
	if (window.location.hash.length == 0) {
		document.getElementById("0").setStyle("display", "block");
		document.getElementById("tab-0").addClass("active");
	}
}

function NavListFix() {
	var banlistnav = getElementsById("div", "banlist-nav");
	for (banID = 0; banID < banlistnav.length; banID++) {
		var s_obj = banlistnav[banID].getElementsByTagName("select");
		for (i = 0; i < s_obj.length; i++) {
			s_obj[i].className += "btn btn-outline-primary btn-rounded btn-fw";
			s_obj[i].style.minWidth = "auto";
			s_obj[i].style.height = "24px";
			s_obj[i].style.padding = "0px 12px";
		}
		var b_objs = banlistnav[banID].getElementsByTagName("b");
		for (i = 0; i < b_objs.length; i++) {
			if (b_objs[i].innerHTML.indexOf("next") != -1) {
				var a_href = b_objs[i].getElementsByTagName("a")[0].getAttribute("href");
				b_objs[i].innerHTML = '<button type="button" onclick="window.location.href=\'' + a_href + '\'" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px; min-width:85px;">Next<i class="mdi mdi-chevron-right"></i></button>';
			}
			if (b_objs[i].innerHTML.indexOf("prev") != -1) {
				var a_href = b_objs[i].getElementsByTagName("a")[0].getAttribute("href");
				b_objs[i].innerHTML = '<button type="button" onclick="window.location.href=\'' + a_href + '\'" class="btn btn-outline-primary btn-rounded btn-fw" style="height:24px;padding: 2px; min-width:85px;"><i class="mdi mdi-chevron-left"></i>Prev</button>';
			}
		}
	}
	var l_obj = document.getElementsByClassName("linkfix");
	for (k = 0; k < l_obj.length; k++) {
		var a_obj = l_obj[k].getElementsByTagName("a");
		for (j = 0; j < a_obj.length; j++) {
			var img_objs = a_obj[j].getElementsByTagName("img");
			for (i = 0; i < img_objs.length; i++) {
				var e = img_objs[i];
				var d = document.createElement('i');
				if (e.src.indexOf("delete") != -1) {
					d.className = "icon-sm mdi mdi-delete";
				}
				if (e.src.indexOf("edit") != -1) {
					d.className = "icon-sm mdi mdi-pencil";
				}
				e.parentNode.replaceChild(d, e);
			}
		}
	}
}
/*
document.getElementById("os_4").addEventListener('DOMSubtreeModified', function () {
  document.getElementById("breadcrumb").innerHTML+="+";
}, false);
Detect changes on server list
Change path of img
*/