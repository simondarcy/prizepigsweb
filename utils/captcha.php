<?php

session_start();
$string = '';

for ($i = 1; $i <= 5; $i++) {
    $string .= chr(rand(97, 122));
}

$_SESSION['captcha'] = $string; //store the captcha

$image = imagecreatetruecolor(165, 50); //custom image size

$font = "arial.ttf"; // custom font style
$color = imagecolorallocate($image, 217, 59, 120); // custom color
$white = imagecolorallocate($image, 255, 255, 255); // custom background color

imagefilledrectangle($image,0,0,399,99,$white);
imagettftext ($image, 30, 0, 0, 40, $color, $font, $_SESSION['captcha']);

header("Content-type: image/png");
imagepng($image);

?>
