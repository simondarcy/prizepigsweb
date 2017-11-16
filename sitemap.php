<?php
/*
Prize Pigs competitions sitemap. List of all active competitions
*/
header("Content-type: application/xml");
//load smarty stuff
require "configs/smarty-config.php";

//Render hmepage teplate
$smarty->display('templates/sitemap.tpl');

?>