<?php



ini_set('display_errors',1);
error_reporting(E_ALL);

session_start();


$id = 18;
$url = 'http://www.prizepigs.ie/api/has_user_entered.php?id=' . $id;
$json = trim(file_get_contents( $url ));
$data = json_decode($json, true);

echo $data['error'];

?>