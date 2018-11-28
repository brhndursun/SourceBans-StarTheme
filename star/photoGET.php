<?php
if (!defined("IN_SB")) {
    echo "You should not be here. Only follow links!";
    die();
}
if(isset($_COOKIE["profilePhoto"]) || !empty($_COOKIE["profilePhoto"]))
{
	echo $_COOKIE["profilePhoto"];
}else{
	
	$steamId=$GLOBALS['userbank']->GetProperty("authid");
	$steamId = str_replace('STEAM_', '' ,$steamId);
	$parts = explode(':', $steamId);
	$gameType = $parts[0];
	$authServer = $parts[1];
	$clientId = $parts[2];
	$res = bcadd((bcadd('76561197960265728', $authServer)), (bcmul($clientId, '2')));
	$cid = str_replace('.0000000000', '', $res);
	
    $endpoint = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" . STEAMAPIKEY . "&steamids=" . $res;
    $data = json_decode(file_get_contents($endpoint), true);
	if(isset($data['response']['players'][0]['personaname']))
		$profilePicture = $data['response']['players'][0]['avatarmedium'];
	else
		$profilePicture = "themes/star/images/faces/face".rand(1,27).".jpg";
	
	echo $profilePicture;
	setcookie("profilePhoto", $profilePicture, time()+9999999);
}
?>