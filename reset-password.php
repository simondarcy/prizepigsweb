<?php
/*
Prize Pigs reset password page
*/

//error reporting
//ini_set('display_errors',1);
//error_reporting(E_ALL);

//load smarty stuff
require "configs/smarty-config.php";


$key = $_GET['key'];

if(isset($key)){
//Render hmepage teplate
$smarty->display('templates/reset-password.tpl');
}
else{
	echo "Invalid Key, if you are having issues please contact info@prizepigs.ie";
}

?>
