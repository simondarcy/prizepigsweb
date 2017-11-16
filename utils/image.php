<?php
    $url = $_GET['src'];
    header('Content-type: image/jpeg');
    imagejpeg(imagecreatefromjpeg($url));
?>