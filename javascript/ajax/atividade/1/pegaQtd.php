<?php 
include "conexao.php";

$vIdProd = isset($_GET["idProd"])? $_GET["idProd"]: 0;
$resposta = "Escolheu o produto $vIdProd";
echo $resposta;

?>