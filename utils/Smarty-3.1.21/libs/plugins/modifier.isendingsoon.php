<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.isendingsoon.php
 * Type:     modifier
 * Name:     isendingsoon
 * Purpose:  Used to flag is a competition is ending soon
 * -------------------------------------------------------------
 */
function smarty_modifier_isendingsoon($date)
{
    $now = new DateTime("now");
    $enddate = new DateTime($date);
    $interval = date_diff($now, $enddate)->d;
    $diff = $enddate->diff($now)->d;

    if($diff<=2){
        return true;
    }
    else{
        return false;
    }

}
?>