<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>{if $header_title != ""}{$header_title}{else}SourceBans{/if}</title>
		<link rel="Shortcut Icon" href="themes/{$theme_name}/images/favicon.ico" />
		<link rel="stylesheet" href="themes/{$theme_name}/css/materialdesign/css/materialdesignicons.min.css">
		<script type="text/javascript" src="./scripts/sourcebans.js"></script>
		<link href="themes/{$theme_name}/css/style.css" rel="stylesheet" type="text/css" />
		<style>
			{php} include("./themes/star/css/customized.php");{/php}
		</style>
		<script src="themes/{$theme_name}/js/jqueryBase.js"></script>
		<link rel="stylesheet" href="themes/{$theme_name}/css/aos.css" />
		<script src="themes/{$theme_name}/js/aos.js"></script>
		<script type="text/javascript" src="./scripts/mootools.js"></script>
		<script type="text/javascript" src="./scripts/contextMenoo.js"></script>
		{$tiny_mce_js}
		{$xajax_functions}
	</head>
	<body onload="NavListFix()">
		<div class="container-scroller">
			<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
				<div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
					<a class="navbar-brand brand-logo" href="index.php">
					<img src="images/{$header_logo}" alt="SourceBans Logo" />
					</a>
					<a class="navbar-brand brand-logo-mini" href="index.php">
					<img src="images/{$header_logo|replace:'.':'-mini.'}" alt="SourceBans Logo" onError="this.onerror=null;this.src='themes/star/images/sb-large-mini.png';" />
					</a>
				</div>
				<div class="navbar-menu-wrapper d-flex align-items-center">
					<ul class="navbar-nav navbar-nav-right">
						<li class="nav-item dropdown">
							<a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
							<i class="mdi mdi-magnify"></i>
							</a>
							<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
								<form method="get" action="index.php" id="banform">
									<input type="hidden" name="p" value="banlist" />
									<a class="dropdown-item">
										<p class="mb-0 font-weight-normal float-left">Search Bans...
										</p>
									</a>
									<a class="dropdown-item preview-item">
										<div class="preview-thumbnail" onclick="document.getElementById('banform').submit();" style="cursor:pointer;">
											<div class="preview-icon bg-danger">
												<i class="mdi mdi-do-not-disturb mx-0"></i>
											</div>
										</div>
										<div class="preview-item-content">
											<input type="text" name="searchText" class="form-control" placeholder="Search Bans..." style="width:190px;">
										</div>
									</a>
								</form>
								<div class="dropdown-divider"></div>
								<form method="get" action="index.php" id="commform">
									<input type="hidden" name="p" value="commslist" />
									<a class="dropdown-item">
										<p class="mb-0 font-weight-normal float-left">Search Comms...
										</p>
									</a>
									<a class="dropdown-item preview-item">
										<div class="preview-thumbnail" onclick="document.getElementById('commform').submit();" style="cursor:pointer;">
											<div class="preview-icon bg-info">
												<i class="mdi mdi-microphone-off mx-0"></i>
											</div>
										</div>
										<div class="preview-item-content">
											<input type="text" name="searchText" class="form-control" placeholder="Search Comms..." style="width:190px;">
										</div>
									</a>
								</form>
								<div class="dropdown-divider"></div>
							</div>
						</li>
						{if $logged_in}
						<li class="nav-item dropdown ">
							<a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
							<span class="profile-text d-none d-xl-inline-block">Hello, {$username} !</span>
							<img class="img-xs rounded-circle" src='{php} include("./themes/star/photoGET.php");{/php}' alt="profile image">
							</a>
							<div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
								<a class="dropdown-item p-0">
									<div class="d-flex border-bottom">
										{php}
										global $userbank;
										if($userbank->is_admin()){
										echo '
										<div class="py-3 px-4 d-flex align-items-center justify-content-center">
											<i class="mdi mdi-settings mr-0 text-gray"></i>
										</div>
										';
										}
										{/php}
										<div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
											<i class="mdi mdi-account-outline mr-0 text-gray"></i>
										</div>
										<div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
											<i class="mdi mdi-lock-outline mr-0 text-gray"></i>
										</div>
										<div class="py-3 px-4 d-flex align-items-center justify-content-center">
											<i class="mdi mdi-logout mr-0 text-gray"></i>
										</div>
									</div>
								</a>
								{php}
								if($userbank->is_admin()){
								echo '<a class="dropdown-item mt-2" href="index.php?p=admin">
								Admin Panel
								</a>';}
								{/php}
								<a class="dropdown-item" href="index.php?p=account">
								Manage Account
								</a>
								<a class="dropdown-item" href="index.php?p=account#^1" onclick="SwapPane(1);">
								Change Password
								</a>
								<a class="dropdown-item" href="index.php?p=logout">
								Sign Out
								</a>
							</div>
						</li>
						{else}
						{php} include("./themes/star/photoNULL.php");{/php}
						{/if}
					</ul>
					<button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
					<span class="mdi mdi-menu"></span>
					</button>
				</div>
			</nav>
		</div>
		<div class="container-fluid page-body-wrapper">
		<nav class="sidebar sidebar-offcanvas" id="sidebar">
		<ul class="nav" id="js_fixme">
		<li class="nav-item nav-profile">
			<div class="nav-link">
				{if $logged_in}
				<div class="user-wrapper">
					<div class="profile-image">
						<img src='{php} include("./themes/star/photoGET.php");{/php}' alt="profile image">
					</div>
					<div class="text-wrapper">
						<a class="profile-name" href="index.php?p=account">{$username}</a>
						<div class="mt-2">
							<small class="designation text-muted"><a href='index.php?p=logout'>Logout</a></small>
						</div>
					</div>
				</div>
				{else}
				<button onclick="location.href='index.php?p=login';" class="btn btn-success btn-block">Login
				</button>
				{/if}
			</div>
		</li>