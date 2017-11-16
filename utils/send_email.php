<?php


define("FROM_NAME", "Prize Pigs");
define("FROM_EMAIL", "donotreply@prizepigs.ie");
		
function sendEmail($email, $subject, $message){

	$mail = mail($email, $subject, $message,
		 "From: ".FROM_NAME." <".FROM_EMAIL.">\r\n"
		."Reply-To: ".FROM_EMAIL."\r\n"
		."MIME-Version: 1.0\r\n"
		."Content-Type: text/html; charset=ISO-8859-1\r\n"
		."X-Mailer: PHP/" . phpversion());

	if($mail) {
		
	} else {
		
	}

}


?>