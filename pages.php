<?php

/*
ini_set('display_errors',1);
error_reporting(E_ALL);
*/

//load smarty stuff
require "configs/smarty-config.php";

$page = $_GET['page'];

$smarty->assign("page", $page, true);

$smarty->display('templates/generic.tpl', 'page_'.$page);


?>

   