<?php
/*
Prize Pigs register page
*/

//error reporting
//ini_set('display_errors',1);
//error_reporting(E_ALL);

//load smarty stuff
require "configs/smarty-config.php";

//Render hmepage teplate
$smarty->display('templates/register.tpl');


?>
