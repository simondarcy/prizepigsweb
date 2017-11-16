<?php
/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     modifier.ppimage.php
 * Type:     modifier
 * Name:     ppimage
 * Purpose:  Used to check if image is pp cms image, is so use proper nameing convention
 * -------------------------------------------------------------
 */
function smarty_modifier_ppimage($filename, $IMAGE_WIDTH=212, $IMAGE_HEIGHT=NULL)
{
    //If match is preset we know its a PP image
	$match = "image_";

    //Defaults
	$IMAGE_QUALITY =  100;
	$TIM_LOCATION = "https://www.prizepigs.ie/utils/timthumb.php";
	$IMAGE_ROOT = "https://www.prizepigs.ie/uploads/";

    //check if the image was uploaded using the PP CMS
    if ( $match === "" || strrpos($filename, $match, -strlen($filename)) !== FALSE){
    	/*Construct correct img URL
        $URL = $TIM_LOCATION . '?src=' . $IMAGE_ROOT . $filename . '&q=' . $IMAGE_QUALITY . '&w=' . $IMAGE_WIDTH;
        //if image height passed in, set it
        if(isset($IMAGE_HEIGHT)){
            $URL = $URL . '&h=' . $IMAGE_HEIGHT;
        }*/
        return "https://www.prizepigs.ie/uploads/" . $filename;
        return $URL;
    }
    else{
        //if not just return filename
    	return $filename;
    }
}
?>