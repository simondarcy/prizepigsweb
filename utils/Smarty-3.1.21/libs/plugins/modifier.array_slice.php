<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.array_slice.php
 * Type:     modifier
 * Name:     array_slice
 * Purpose:  Slice an array
 * -------------------------------------------------------------
 */
function smarty_modifier_array_slice($array, $offset, $length)
{
    return array_slice($array, $offset, $length);
}
?>