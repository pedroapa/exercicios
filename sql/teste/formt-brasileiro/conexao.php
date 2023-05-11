<?php 
    $host = "localhost";
    $user = "root";
    $pas = "hoje12";
    $db = "test";

    $conn = mysqli_connect($host, $user, $pas);
    mysqli_select_db($conn, $db);

    if(!$conn){
        echo "[ERRROR] na hora de conectar com o banco.";
    }
?>