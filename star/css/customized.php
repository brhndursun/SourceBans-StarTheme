<?php
function sass_darken($hex, $percent, $alpha=1) {
    preg_match('/^#?([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i', $hex, $primary_colors);
	str_replace('%', '', $percent);
	$color = "#";
	for($i = 1; $i <= 3; $i++) {
		$primary_colors[$i] = hexdec($primary_colors[$i]);
		$primary_colors[$i] = round($primary_colors[$i] * (100-($percent*2))/100);
		$primary_colors[$i] = $primary_colors[$i] > 255 ? 255 : $primary_colors[$i];
		$color .= str_pad(dechex($primary_colors[$i]), 2, '0', STR_PAD_LEFT);
	}
	if($alpha<1)
	{
		$alpha = $alpha * 255;
		$color .= str_pad(dechex($alpha), 2, '0', STR_PAD_LEFT);
	}
	return $color;
}
function sass_lighten($hex, $percent,$alpha=1) {
	preg_match('/^#?([0-9a-f]{2})([0-9a-f]{2})([0-9a-f]{2})$/i', $hex, $primary_colors);
	str_replace('%', '', $percent);
	$color = "#";
	for($i = 1; $i <= 3; $i++) {
		$primary_colors[$i] = hexdec($primary_colors[$i]);
		$primary_colors[$i] = round($primary_colors[$i] * (100+($percent*2))/100);
		$primary_colors[$i] = $primary_colors[$i] > 255 ? 255 : $primary_colors[$i];
		$color .= str_pad(dechex($primary_colors[$i]), 2, '0', STR_PAD_LEFT);
	}
	if($alpha<1)
	{
		$alpha = $alpha * 255;
		$color .= str_pad(dechex($alpha), 2, '0', STR_PAD_LEFT);
	}
	return $color;
}
function hextorgb($hex){
	$split = str_split(ltrim($hex, '#'), 2);
	$r = hexdec($split[0]);
	$g = hexdec($split[1]);
	$b = hexdec($split[2]);
	return "rgb(" . $r . ", " . $g . ", " . $b . ")";
}
function hextorgba($hex,$alpha){
	$split = str_split(ltrim($hex, '#'), 2);
	$r = hexdec($split[0]);
	$g = hexdec($split[1]);
	$b = hexdec($split[2]);
	return "rgb(" . $r . ", " . $g . ", " . $b . ", " . $alpha . ")";
}
function calculateColor($hex){
	$whiteLum = calcLum($hex, "#FFFFFF");
	$blackLum = calcLum($hex, "#383f48");
	return ($whiteLum > $blackLum ? "#FFFFFF" : "#383F48");
}
function calcLum($hex,$text){
	$R1 = hexdec(substr($hex, 1, 2));
    $G1 = hexdec(substr($hex, 3, 2));
    $B1 = hexdec(substr($hex, 5, 2));

	$R2 = hexdec(substr($text, 1, 2));
    $G2 = hexdec(substr($text, 3, 2));
    $B2 = hexdec(substr($text, 5, 2));

    $L1 = 0.2126 * pow($R1/255, 2.2) +
          0.7152 * pow($G1/255, 2.2) +
          0.0722 * pow($B1/255, 2.2);
 
    $L2 = 0.2126 * pow($R2/255, 2.2) +
          0.7152 * pow($G2/255, 2.2) +
          0.0722 * pow($B2/255, 2.2);
 
    if($L1 > $L2){
        return ($L1+0.05) / ($L2+0.05);
    }else{
        return ($L2+0.05) / ($L1+0.05);
    }
}
function usedarktext($hex) {
	$r = hexdec(substr($hex, 1, 2));
    $g = hexdec(substr($hex, 3, 2));
    $b = hexdec(substr($hex, 5, 2));
    $yiq = (($r * 299) + ($g * 587) + ($b * 114)) / 1000;
    return ($yiq >= 128) ? true : false;
}
$colorPrimary= ($GLOBALS['config']['starTheme.colorPrimary'] == '' ? '#308ee0' : $GLOBALS['config']['starTheme.colorPrimary']);
$colorSecondary= ($GLOBALS['config']['starTheme.colorSecondary'] == '' ? '#e5e5e5' : $GLOBALS['config']['starTheme.colorSecondary']);
$colorSuccess= ($GLOBALS['config']['starTheme.colorSuccess'] == '' ? '#00ce68' : $GLOBALS['config']['starTheme.colorSuccess']);
$colorInfo= ($GLOBALS['config']['starTheme.colorInfo'] == '' ? '#8862e0' : $GLOBALS['config']['starTheme.colorInfo']);
$colorWarning= ($GLOBALS['config']['starTheme.colorWarning'] == '' ? '#ffaf00' : $GLOBALS['config']['starTheme.colorWarning']);
$colorDanger= ($GLOBALS['config']['starTheme.colorDanger'] == '' ? '#e65251' : $GLOBALS['config']['starTheme.colorDanger']);
$colorLight= ($GLOBALS['config']['starTheme.colorLight'] == '' ? '#f3f5f6' : $GLOBALS['config']['starTheme.colorLight']);
$colorDark= ($GLOBALS['config']['starTheme.colorDark'] == '' ? '#424964' : $GLOBALS['config']['starTheme.colorDark']);
$gradLeft= ($GLOBALS['config']['starTheme.gradLeft'] == '' ? '#00e4d0' : $GLOBALS['config']['starTheme.gradLeft']);
$gradRight= ($GLOBALS['config']['starTheme.gradRight'] == '' ? '#5983e8' : $GLOBALS['config']['starTheme.gradRight']);
$wrapper_bg= "#383f48";
?>
:root {
  --primary:<?php echo $colorPrimary; ?>;
  --secondary:<?php echo $colorSecondary; ?>;
  --success:<?php echo $colorSuccess; ?>;
  --info:<?php echo $colorInfo; ?>;
  --warning:<?php echo $colorWarning; ?>;
  --danger:<?php echo $colorDanger; ?>;
  --light:<?php echo $colorLight; ?>;
  --dark:<?php echo $colorDark; ?>;
  --main-bg:#272c33;
  --main-color:#929ca0;
  --main-border:#3e4356;

  --link-hover:white;

  --nav-link-color:#b3bbc6;
  --nav-link-color-hover:white;
  --nav-link-bg:none;
  --nav-link-bg-hover:none;

  --wrapper-bg:<?php echo $wrapper_bg; ?>;

  --breadcrumb-bg:#424964;

  --nav-grad-left:<?php echo $gradLeft; ?>;
  --nav-grad-right:<?php echo $gradRight; ?>;
}
<?php if($GLOBALS['config']['starTheme.darkTheme']) { ?>
body *:not([class*="btn"]){
	border-color:#3e4356 !important;
}
.mce-btn{
	border-color:#b1b1b1 !important;
}
body{
	color:var(--main-color);
	background-color:var(--main-bg);
}

.navbar.default-layout .navbar-brand-wrapper{
	background:var(--main-bg);
}
.sidebar{
	background:var(--main-bg); 
}
.sidebar .nav .nav-item .nav-link{
	color:var(--nav-link-color);
}
.sidebar .nav .nav-item.active{
	background:none;
}
.sidebar .nav .nav-item.active > .nav-link{
	color:var(--primary);
}
.sidebar .nav .nav-item.active:before,.sidebar-themes .nav .nav-item:before{
	background: var(--primary);
}
.sidebar .nav:not(.sub-menu) > .nav-item:hover:not(.nav-profile) > .nav-link{
	color:var(--nav-link-color-hover);
	background:var(--nav-link-bg);
}
.sidebar .nav .nav-item:hover .nav-link .menu-icon{
	color:var(--nav-link-color-hover);
}
.nav-pills .nav-item .nav-link{
	color:var(--main-color);
}

.content-wrapper{
	background: var(--wrapper-bg);
}

.breadcrumb{
	color:#fff;
	background-color:var(--breadcrumb-bg) !important; 
}

.purchace-popup > div > span{
	background: var(--main-bg);
}
.purchace-popup > div > span p{
	color:var(--main-color);
}

.card{
	background-color: var(--main-bg);
}
.card-title{
	color:white;
}
.table-striped tbody tr:nth-of-type(odd){
	background: rgba(0,0,0,0.05);
}
.table-hover tbody tr:hover{
	background: rgba(0,0,0,0.1);
}
.table .table{
	background:none;
}
.footer{
	background: var(--main-bg);
}

.form-control{
	background: rgba(255,255,255,0.05);
	color:var(--main-color);
	border-color:var(--main-border);
}
.form-control:focus{
	color:var(--main-color);
	background: rgba(255,255,255,0.1);
}
.form-check .form-check-label input:checked + .input-helper:before, .form-radio label input:checked + .input-helper:before{
	background: none;
}

div.btn.btn-inverse-light,
div.btn.btn-inverse-light:hover{
	background-color:rgba(255,255,255,0.05);
	color:var(--main-color);
	border-color:var(--main-border);
}

.nav-pills.nav-pills-primary .nav-item .nav-link.active, .nav-pills.nav-pills-primary .nav-item .nav-link.active:focus, .nav-pills.nav-pills-primary .nav-item .nav-link:hover{
	background-color: <?php echo sass_lighten($colorPrimary,10); ?> !important;
	box-shadow:0 4px 20px 0 rgba(179,187,198,.14), 0 7px 10px -5px <?php echo sass_lighten($colorPrimary,10,0.4); ?>;
}

.dropdown-menu {
	background-color:#383f48;
}
body .dropdown-menu *, body .dropdown-menu {
	border-color:rgba(0,0,0,0.4) !important;
}
.dropdown-menu a {
	color:var(--main-color);
}
.dropdown-item:hover, .dropdown-item:focus{
	color:white;
	background-color: unset;
}

#dialog-placement{
  background:var(--main-bg);
  box-shadow: 0px 0px 20px 14px <?php echo hextorgba($colorPrimary,0.1); ?>;
}

a:hover{
	color:var(--link-hover);
}
<?php }else{ ?>

a:hover{
	color:<?php echo sass_darken($colorPrimary,10);?>;
}

<?php } ?>

.navbar.default-layout{
	background:linear-gradient(120deg, var(--nav-grad-left) 250px, var(--nav-grad-right));
}
.footer a,a{
	color:var(--primary);
}
.nav-pills.nav-pills-primary .nav-item .nav-link.active, .nav-pills.nav-pills-primary .nav-item .nav-link.active:focus, .nav-pills.nav-pills-primary .nav-item .nav-link:hover{
	color:<?php echo calculateColor($colorPrimary)?>;
}
.form-check .form-check-label input:checked + .input-helper:after{
	color:var(--primary);
}
.list-arrow li:before{
	color:var(--primary);
}
.form-check .form-check-label .input-helper:before, .form-radio label input + .input-helper:before{
	border-color:var(--primary) !important;
}
[id*="noplayer"] h2{
	color:white !important;
}
/* Additional Fix For Buttons And More */

<?php GenerateColors("primary", $colorPrimary);?>
<?php GenerateColors("secondary", $colorSecondary);?>
<?php GenerateColors("success", $colorSuccess);?>
<?php GenerateColors("info", $colorInfo);?>
<?php GenerateColors("warning", $colorWarning);?>
<?php GenerateColors("danger", $colorDanger);?>
<?php GenerateColors("light", $colorLight);?>
<?php GenerateColors("dark", $colorDark);?>


<?php 

function GenerateColors($name, $color){
?>
.btn-<?php echo $name;?>:focus,
.btn-<?php echo $name;?>.focus,
.btn-<?php echo $name;?>:not(:disabled):not(.disabled):active:focus,
.btn-<?php echo $name;?>:not(:disabled):not(.disabled).active:focus,
.show>.btn-<?php echo $name;?>.dropdown-toggle:focus,
.btn-outline-<?php echo $name;?>:focus,
.btn-outline-<?php echo $name;?>.focus,
.btn-outline-<?php echo $name;?>:not(:disabled):not(.disabled):active:focus,
.btn-outline-<?php echo $name;?>:not(:disabled):not(.disabled).active:focus,
.show>.btn-outline-<?php echo $name;?>.dropdown-toggle:focus {
	box-shadow: 0 0 0 0.2rem <?php echo hextorgba($color,0.5); ?>;
}
.btn.btn-<?php echo $name;?> {
	color:<?php echo calculateColor($color);?>;
}
.btn-<?php echo $name;?>:hover {
	color:<?php echo calculateColor(sass_darken($color,15));?>;
    background-color: <?php echo sass_darken($color,15); ?>;
    border-color: <?php echo sass_darken($color,18); ?>;
}
.btn-<?php echo $name;?>:not(:disabled):not(.disabled):active,
.btn-<?php echo $name;?>:not(:disabled):not(.disabled).active,
.show > .btn-<?php echo $name;?>.dropdown-toggle {
	background-color: <?php echo sass_darken($color,18); ?>;
	border-color: <?php echo sass_darken($color,22); ?>;
}
.nav-pills.nav-pills-<?php echo $name;?> .nav-item .nav-link.active,
.nav-pills.nav-pills-<?php echo $name;?> .nav-item .nav-link.active:focus,
.nav-pills.nav-pills-<?php echo $name;?> .nav-item .nav-link:hover {
	box-shadow: 0 4px 20px 0 rgba(0, 0, 0, .14), 0 7px 10px -5px <?php echo hextorgba($color,0.4); ?>;
}

.bg-inverse-<?php echo $name;?> {
	background: <?php echo hextorgba($color,0.2); ?>;
}

.badge-inverse-<?php echo $name;?> {
	background: <?php echo hextorgba($color,0.3); ?>;
}

.btn-inverse-<?php echo $name;?> {
	background-color: <?php echo hextorgba($color,0.2); ?>;
	border-color: <?php echo hextorgba($color,0); ?>;
}

.btn-inverse-<?php echo $name;?>.focus,
.btn-inverse-<?php echo $name;?>:focus {
	box-shadow: 0 0 0 3px <?php echo hextorgba($color,0.5); ?>;
}

.btn-inverse-outline-<?php echo $name;?> {
	border-color: <?php echo hextorgba($color,0.2); ?>;
}

.btn-inverse-outline-<?php echo $name;?>:hover {
	background-color: <?php echo hextorgba($color,0.2); ?>;
	border-color: <?php echo hextorgba($color,0.2); ?>;
}

.btn-inverse-outline-<?php echo $name;?>.focus,
.btn-inverse-outline-<?php echo $name;?>:focus {
	box-shadow: 0 0 0 3px <?php echo hextorgba($color,0.5); ?>;
}

.card-inverse-<?php echo $name;?> {
	background: <?php echo hextorgba($color,0.2); ?>;
}

.badge-<?php echo $name;?>[href]:hover, .badge-<?php echo $name;?>[href]:focus {
    background-color: <?php echo sass_darken($color,18); ?> !important;
}

a.bg-<?php echo $name;?>:hover, a.bg-<?php echo $name;?>:focus,
button.bg-<?php echo $name;?>:hover,
button.bg-<?php echo $name;?>:focus {
  background-color: <?php echo sass_darken($color,18); ?> !important; }
a.text-<?php echo $name;?>:hover, a.text-<?php echo $name;?>:focus {
  color: <?php echo sass_darken($color,18); ?> !important; }

<?php } ?>