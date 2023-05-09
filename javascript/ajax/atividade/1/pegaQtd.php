<?php 
include "conexao.php";

$vIdProd = isset($_GET["idProd"])? $_GET["idProd"]: 0;

//Mysql
$sql = "SELECT amount FROM products
WHERE id = $vIdProd";
$res = mysqli_query($conn, $sql);
$linha = mysqli_fetch_array($res);
$vQtd = $linha[0];

echo $vQtd;

?>