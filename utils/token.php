<?php
/*

*/

class Token {
	public static function generate(){
		$string = '';
		for ($i = 1; $i <= 18; $i++) {
    		$string .= chr(rand(97, 122));
		}
		return $string;
	}//end generate
	
}//end class


?>