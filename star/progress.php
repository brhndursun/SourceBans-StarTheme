<?php
if (!defined("IN_SB")) {
    echo "You should not be here. Only follow links!";
    die();
}
$res  = $GLOBALS['db']->Execute("SELECT created, ends FROM " . DB_PREFIX . "_bans AS ba ORDER BY created DESC LIMIT 10");
$b_times = array();
while (!$res->EOF) {
	$info = array();
	$info["c"] = $res->fields['created'];
	$info["e"] = $res->fields['ends'];
	array_push($b_times, $info);
	$res->MoveNext();
}
$this->assign('ban_times', $b_times);
?>
