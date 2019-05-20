<?php
if (!defined("IN_SB")) {
	echo "You should not be here. Only follow links!";
	die();
}
global $userbank;
if($userbank->HasAccess(ADMIN_OWNER | ADMIN_WEB_SETTINGS)){
	if ((isset($_GET["darkTheme"]) || !empty($_GET["darkTheme"])) &&
		(isset($_GET["colorPrimary"]) || !empty($_GET["colorPrimary"])) &&
		(isset($_GET["colorSecondary"]) || !empty($_GET["colorSecondary"])) &&
		(isset($_GET["gradLeft"]) || !empty($_GET["gradLeft"])) &&
		(isset($_GET["gradRight"]) || !empty($_GET["gradRight"]))) {
		$darkTheme = $_GET["darkTheme"];
		$colorPrimary = "#".$_GET["colorPrimary"];
		$colorSecondary = "#".$_GET["colorSecondary"];
		$gradLeft = "#".$_GET["gradLeft"];
		$gradRight = "#".$_GET["gradRight"];
		echo $gradLeft.$gradRight;

		$edit = $GLOBALS['db']->Execute("REPLACE INTO " . DB_PREFIX . "_settings (`value`, `setting`) VALUES
											('".$darkTheme."', 'starTheme.darkTheme'),
											('".$colorPrimary."', 'starTheme.colorPrimary'),
											('".$colorSecondary."', 'starTheme.colorSecondary'),
											('".$colorSuccess."', 'starTheme.colorSuccess'),
											('".$colorInfo."', 'starTheme.colorInfo'),
											('".$colorWarning."', 'starTheme.colorWarning'),
											('".$colorDanger."', 'starTheme.colorDanger'),
											('".$colorLight."', 'starTheme.colorLight'),
											('".$colorDark."', 'starTheme.colorDark'),
											('".$gradLeft."', 'starTheme.gradLeft'),
											('".$gradRight."', 'starTheme.gradRight')");
		?><script>ShowBox('Theme Settings Updated', 'The changes have been successfully updated', 'green', 'index.php?p=admin&c=settings#^3');</script><?php
	}else{
		?>
		<script type="text/javascript">
			function SyncInputs(val, name, pointer) {
				var _val = val;
				if(val.length > 7) {
					_val = _val.substr(0,6);
				}
				if(val.length<5) {
					_val = '#' + val[1] + val[1] + val[2] + val[2] + val[3] + val[3];
				}

				if(name.indexOf('i_') != -1){
					document.getElementsByName(name.substr(2))[0].value =_val;
				}else{
					document.getElementsByName('i_'+name)[0].value =_val;
				}
					document.getElementsByName(name)[0].value =_val;
				document.documentElement.style.setProperty(pointer,_val);
			}
			$('enable_darktheme').checked = <?php echo ($GLOBALS['config']['starTheme.darkTheme'] == '0' ? 'false' : 'true');?>;
			$('colorPrimary').value = '<?php echo ($GLOBALS['config']['starTheme.colorPrimary'] == '' ? '#308ee0' : $GLOBALS['config']['starTheme.colorPrimary']);?>';
			$('i_colorPrimary').value = '<?php echo ($GLOBALS['config']['starTheme.colorPrimary'] == '' ? '#308ee0' : $GLOBALS['config']['starTheme.colorPrimary']);?>';

			$('colorSecondary').value = '<?php echo ($GLOBALS['config']['starTheme.colorSecondary'] == '' ? '#e5e5e5' : $GLOBALS['config']['starTheme.colorSecondary']);?>';
			$('i_colorSecondary').value = '<?php echo ($GLOBALS['config']['starTheme.colorSecondary'] == '' ? '#e5e5e5' : $GLOBALS['config']['starTheme.colorSecondary']);?>';

			$('colorSuccess').value = '<?php echo ($GLOBALS['config']['starTheme.colorSuccess'] == '' ? '#00ce68' : $GLOBALS['config']['starTheme.colorSuccess']);?>';
			$('i_colorSuccess').value = '<?php echo ($GLOBALS['config']['starTheme.colorSuccess'] == '' ? '#00ce68' : $GLOBALS['config']['starTheme.colorSuccess']);?>';

			$('colorInfo').value = '<?php echo ($GLOBALS['config']['starTheme.colorInfo'] == '' ? '#8862e0' : $GLOBALS['config']['starTheme.colorInfo']);?>';
			$('i_colorInfo').value = '<?php echo ($GLOBALS['config']['starTheme.colorInfo'] == '' ? '#8862e0' : $GLOBALS['config']['starTheme.colorInfo']);?>';

			$('colorWarning').value = '<?php echo ($GLOBALS['config']['starTheme.colorWarning'] == '' ? '#ffaf00' : $GLOBALS['config']['starTheme.colorWarning']);?>';
			$('i_colorWarning').value = '<?php echo ($GLOBALS['config']['starTheme.colorWarning'] == '' ? '#ffaf00' : $GLOBALS['config']['starTheme.colorWarning']);?>';

			$('colorDanger').value = '<?php echo ($GLOBALS['config']['starTheme.colorDanger'] == '' ? '#e65251' : $GLOBALS['config']['starTheme.colorDanger']);?>';
			$('i_colorDanger').value = '<?php echo ($GLOBALS['config']['starTheme.colorDanger'] == '' ? '#e65251' : $GLOBALS['config']['starTheme.colorDanger']);?>';

			$('colorLight').value = '<?php echo ($GLOBALS['config']['starTheme.colorLight'] == '' ? '#f3f5f6' : $GLOBALS['config']['starTheme.colorLight']);?>';
			$('i_colorLight').value = '<?php echo ($GLOBALS['config']['starTheme.colorLight'] == '' ? '#f3f5f6' : $GLOBALS['config']['starTheme.colorLight']);?>';

			$('colorDark').value = '<?php echo ($GLOBALS['config']['starTheme.colorDark'] == '' ? '#424964' : $GLOBALS['config']['starTheme.colorDark']);?>';
			$('i_colorDark').value = '<?php echo ($GLOBALS['config']['starTheme.colorDark'] == '' ? '#424964' : $GLOBALS['config']['starTheme.colorDark']);?>';

			$('gradLeft').value = '<?php echo ($GLOBALS['config']['starTheme.gradLeft'] == '' ? '#00e4d0' : $GLOBALS['config']['starTheme.gradLeft']);?>';
			$('i_gradLeft').value = '<?php echo ($GLOBALS['config']['starTheme.gradLeft'] == '' ? '#00e4d0' : $GLOBALS['config']['starTheme.gradLeft']);?>';
			$('gradRight').value = '<?php echo ($GLOBALS['config']['starTheme.gradRight'] == '' ? '#5983e8' : $GLOBALS['config']['starTheme.gradRight']);?>';
			$('i_gradRight').value = '<?php echo ($GLOBALS['config']['starTheme.gradRight'] == '' ? '#5983e8' : $GLOBALS['config']['starTheme.gradRight']);?>';
		</script>
		<?php
	}
}
?>