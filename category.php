<?php
/*
Prize Pigs category page. Example: Food, Travel, Entertainment
*/

//load smarty stuff
require "configs/smarty-config.php";

//category Logic Here
$category = $_GET['category'];

$smarty->assign("category", $category, true);

//Render category teplate
$smarty->display('templates/category.tpl', 'category'.$category);

?>