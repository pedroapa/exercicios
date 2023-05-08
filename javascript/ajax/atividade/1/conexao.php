<?php 
$host = 'localhost';
$user = 'root';
$pas = 'hoje12';
$db = 'produtosimportados';

$conn = mysqli_connect($host, $user, $pas);
mysqli_select_db($conn, $db);

if(!$conn){
    echo "Ocorreu um erro!";
}

?>