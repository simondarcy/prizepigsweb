<?php
/*
Prize Pigs competition detail page.
*/

//load smarty stuff
require "configs/smarty-config.php";

//competition Logic Here
$id = $_GET['id'];

$smarty->assign("id", $id, true);

//Render hmepage teplate
$smarty->display('templates/competition.tpl', 'comp_'.$id);

?>