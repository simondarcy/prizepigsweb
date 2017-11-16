<?php 
//check token and id
$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

//make sure all correct data in POST
if ( count($request) > 0 && isset($request->uid) && isset($request->token) ){
    $uid = $request->uid;
    $token = $request->token;

    require_once('../utils/connect.php');
    $query = "SELECT * FROM users WHERE id = $uid AND token = '$token' and del = 0 LIMIT 1";
    $result = $link->query($query) or die('Errant query:  '.$query);
    //check if anything was returned
    $row_cnt = $result->num_rows;
    if( $row_cnt == 0 ){
        echo "invalid token";
    }
    else{
        $row = $result->fetch_assoc();
        $_SESSION['pp_id'] = $row['id'];
    }//end if row count
}//end if 


?>