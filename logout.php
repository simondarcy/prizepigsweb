<?php
/* 
logout.php
Log user out and redirect
*/

session_start();
session_destroy();

$next = "index.php";

if(isset($_GET['next'])){
	$next = $_GET['next'];
}

header("Location: ".$next); /* Redirect browser */
exit();
?>