<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.remaining.php
 * Type:     modifier
 * Name:     remaining
 * Purpose:  Used to check if image is pp cms image, is so use proper nameing convention
 * -------------------------------------------------------------
 */
function smarty_modifier_remaining($futuredate)
{

    //Example future date 2011-05-11 12:00:00
    $now = new DateTime();
    $future_date = new DateTime($futuredate);

    $interval = $future_date->diff($now);

    return $interval->format("%d days, %h hours, %i mins");
}
?>