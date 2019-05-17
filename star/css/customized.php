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
function hextocontrast($hex) {
	// hex RGB
	$R1 = hexdec(substr($hex, 1, 2));
	$G1 = hexdec(substr($hex, 3, 2));
	$B1 = hexdec(substr($hex, 5, 2));

	// Black RGB
	$blackColor = "#000000";
	$R2BlackColor = hexdec(substr($blackColor, 1, 2));
	$G2BlackColor = hexdec(substr($blackColor, 3, 2));
	$B2BlackColor = hexdec(substr($blackColor, 5, 2));

	// Calc contrast ratio
	$L1 = 0.2126 * pow($R1 / 255, 2.2) +
	0.7152 * pow($G1 / 255, 2.2) +
	0.0722 * pow($B1 / 255, 2.2);

	$L2 = 0.2126 * pow($R2BlackColor / 255, 2.2) +
	0.7152 * pow($G2BlackColor / 255, 2.2) +
	0.0722 * pow($B2BlackColor / 255, 2.2);

	$contrastRatio = 0;
	if ($L1 > $L2) {
		return $contrastRatio = (int)(($L1 + 0.05) / ($L2 + 0.05));
	} else {
		return $contrastRatio = (int)(($L2 + 0.05) / ($L1 + 0.05));
	}
}
$colorPrimary= ($GLOBALS['config']['starTheme.colorPrimary'] == '' ? '#308ee0' : $GLOBALS['config']['starTheme.colorPrimary']);
$gradLeft= ($GLOBALS['config']['starTheme.gradLeft'] == '' ? '#00e4d0' : $GLOBALS['config']['starTheme.gradLeft']);
$gradRight= ($GLOBALS['config']['starTheme.gradRight'] == '' ? '#5983e8' : $GLOBALS['config']['starTheme.gradRight']);

?>
:root {
  --primary:<?php echo $colorPrimary; ?>;
  --main-bg:#272c33;
  --main-color:#929ca0;
  --main-border:#3e4356;

  --link-hover:white;

  --nav-link-color:#b3bbc6;
  --nav-link-color-hover:white;
  --nav-link-bg:none;
  --nav-link-bg-hover:none;

  --wrapper-bg:#383f48;

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
.footer a,a{
	color:var(--primary);
}
a:hover{
	color:var(--link-hover);
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
.navbar.default-layout{
	background:linear-gradient(120deg, var(--nav-grad-left), var(--nav-grad-right));
}

#dialog-placement{
  background:var(--main-bg);
  box-shadow: 0px 0px 20px 14px <?php echo hextorgba($colorPrimary,0.1); ?>;
}

<?php } ?>

.nav-pills.nav-pills-primary .nav-item .nav-link.active, .nav-pills.nav-pills-primary .nav-item .nav-link.active:focus, .nav-pills.nav-pills-primary .nav-item .nav-link:hover{
	color:<?php echo (hextocontrast($colorPrimary)>5 ? "var(--wrapper-bg)" : "#ffffff")?>;
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

/*Color Primary*/

.btn-primary:focus,
.btn-primary.focus,
.btn-primary:not(:disabled):not(.disabled):active:focus,
.btn-primary:not(:disabled):not(.disabled).active:focus,
.show>.btn-primary.dropdown-toggle:focus,
.btn-outline-primary:focus,
.btn-outline-primary.focus,
.btn-outline-primary:not(:disabled):not(.disabled):active:focus,
.btn-outline-primary:not(:disabled):not(.disabled).active:focus,
.show>.btn-outline-primary.dropdown-toggle:focus {
	box-shadow: 0 0 0 0.2rem <?php echo hextorgba($colorPrimary,0.5); ?>;
}
.nav-pills.nav-pills-primary .nav-item .nav-link.active,
.nav-pills.nav-pills-primary .nav-item .nav-link.active:focus,
.nav-pills.nav-pills-primary .nav-item .nav-link:hover {
	box-shadow: 0 4px 20px 0 rgba(0, 0, 0, .14), 0 7px 10px -5px <?php echo hextorgba($colorPrimary,0.4); ?>;
}

.bg-inverse-primary {
	background: <?php echo hextorgba($colorPrimary,0.2); ?>;
}

.badge-inverse-primary {
	background: <?php echo hextorgba($colorPrimary,0.3); ?>;
}

.btn-inverse-primary {
	background-color: <?php echo hextorgba($colorPrimary,0.2); ?>;
	border-color: <?php echo hextorgba($colorPrimary,0); ?>;
}

.btn-inverse-primary.focus,
.btn-inverse-primary:focus {
	box-shadow: 0 0 0 3px <?php echo hextorgba($colorPrimary,0.5); ?>;
}

.btn-inverse-outline-primary {
	border-color: <?php echo hextorgba($colorPrimary,0.2); ?>;
}

.btn-inverse-outline-primary:hover {
	background-color: <?php echo hextorgba($colorPrimary,0.2); ?>;
	border-color: <?php echo hextorgba($colorPrimary,0.2); ?>;
}

.btn-inverse-outline-primary.focus,
.btn-inverse-outline-primary:focus {
	box-shadow: 0 0 0 3px <?php echo hextorgba($colorPrimary,0.5); ?>;
}

.card-inverse-primary {
	background: <?php echo hextorgba($colorPrimary,0.2); ?>;
}