<?php
if (!defined("IN_SB")) {
	echo "You should not be here. Only follow links!";
	die();
}
global $userbank;
if($userbank->HasAccess(ADMIN_OWNER | ADMIN_WEB_SETTINGS)){
	if ((isset($_GET["darkTheme"]) || !empty($_GET["darkTheme"])) &&
		(isset($_GET["colorPrimary"]) || !empty($_GET["colorPrimary"])) &&
		(isset($_GET["gradLeft"]) || !empty($_GET["gradLeft"])) &&
		(isset($_GET["gradRight"]) || !empty($_GET["gradRight"]))) {
		$darkTheme = $_GET["darkTheme"];
		$colorPrimary = "#".$_GET["colorPrimary"];
		$gradLeft = "#".$_GET["gradLeft"];
		$gradRight = "#".$_GET["gradRight"];
		echo $gradLeft.$gradRight;

		$edit = $GLOBALS['db']->Execute("REPLACE INTO " . DB_PREFIX . "_settings (`value`, `setting`) VALUES
											('".$darkTheme."', 'starTheme.darkTheme'),
											('".$colorPrimary."', 'starTheme.colorPrimary'),
											('".$gradLeft."', 'starTheme.gradLeft'),
											('".$gradRight."', 'starTheme.gradRight')");
		?><script>ShowBox('Theme Settings Updated', 'The changes have been successfully updated', 'green', 'index.php?p=admin&c=settings#^3');</script><?php
	}else{
		?>
		<script type="text/javascript">
			$('enable_darktheme').checked = <?php echo ($GLOBALS['config']['starTheme.darkTheme'] == '0' ? 'false' : 'true');?>;
			$('colorPrimary').value = '<?php echo ($GLOBALS['config']['starTheme.colorPrimary'] == '' ? '#308ee0' : $GLOBALS['config']['starTheme.colorPrimary']);?>';
			$('gradLeft').value = '<?php echo ($GLOBALS['config']['starTheme.gradLeft'] == '' ? '#00e4d0' : $GLOBALS['config']['starTheme.gradLeft']);?>';
			$('gradRight').value = '<?php echo ($GLOBALS['config']['starTheme.gradRight'] == '' ? '#5983e8' : $GLOBALS['config']['starTheme.gradRight']);?>';
		</script>
		<?php
	}
}
?>