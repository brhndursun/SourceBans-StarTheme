<?php
if (!defined("IN_SB")) {
    echo "You should not be here. Only follow links!";
    die();
}

$list_progress=false;
if (!isset($_GET['searchText']) && !isset($_GET['advSearch']) && !isset($_GET['advType'])) {
	$list_progress=true;
	if (isset($_SESSION["hideinactive"])) {
        $hideinactive = "WHERE RemoveType IS NULL";
    }else{
    	$hideinactive="";
    }
	$page = 1;
	$BansPerPage = SB_BANS_PER_PAGE;
	if (isset($_GET['page']) && $_GET['page'] > 0) {
	    $page = intval($_GET['page']);
	}
	$BansStart = intval(($page - 1) * $BansPerPage);
	$BansEnd   = intval($BansStart + $BansPerPage);

	$res = $GLOBALS['db']->Execute("SELECT bid, name, created, ends FROM " . DB_PREFIX . "_".$pageName." " . $hideinactive . " ORDER BY created DESC, bid ASC
		LIMIT ?,?", array(intval($BansStart),intval($BansPerPage)));
	$b_times = array();
	while (!$res->EOF) {
		$info = array();
		$info["c"] = $res->fields['created'];
		$info["e"] = $res->fields['ends'];
		array_push($b_times, $info);
		$res->MoveNext();
	}
}
$this->assign('list_progress', $list_progress);
$this->assign('ban_times', $b_times);
?>
