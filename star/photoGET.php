<?php

if (!defined("IN_SB")) {
    echo "You should not be here. Only follow links!";
    die();
}
if (isset($_COOKIE["profilePhoto"]) || !empty($_COOKIE["profilePhoto"])) {
	echo $_COOKIE["profilePhoto"];
}else{
	$authid=$GLOBALS['userbank']->GetProperty("authid");
	if (preg_match('/^STEAM_/',$authid)) {
		$parts = explode(':', $authid);
		$authServer = $parts[1];
		$clientID = $parts[2];
		$key = "76561197960265728";
		$results = $GLOBALS['db']->Execute("Select @sum:=( ( $key + $authServer ) + ( $clientID * 2 ) ) as s64");
		$res = $results->fields["s64"];

	    $endpoint = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" . STEAMAPIKEY . "&steamids=" . $res;
	    $data = json_decode(file_get_contents($endpoint), true);
		if(isset($data['response']['players'][0]['avatarmedium']))
			$profilePicture = $data['response']['players'][0]['avatarmedium'];
		else
			$profilePicture = "themes/star/images/faces/face".rand(1,27).".jpg";
	}else{
		$profilePicture = "themes/star/images/faces/face".rand(1,27).".jpg";
	}
	echo $profilePicture;
	setcookie("profilePhoto", $profilePicture, time()+9999999);
}

?>