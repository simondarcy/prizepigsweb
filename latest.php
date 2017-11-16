<?php
/*
Prize Pigs latest page. 
*/

//load smarty stuff
require "configs/smarty-config.php";

//category Logic Here
$category = "latest";

$smarty->assign("category", $category, true);

//Render category teplate
$smarty->display('templates/latest.tpl', 'category'.$category);

?>