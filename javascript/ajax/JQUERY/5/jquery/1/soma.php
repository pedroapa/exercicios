<?php 
    $vNum1 = isset($_GET["val1"])? $_GET["val1"]: 0;
    $vNum2 = isset($_GET["val2"])? $_GET["val2"]: 0;

    print $vNum1 + $vNum2;

?>