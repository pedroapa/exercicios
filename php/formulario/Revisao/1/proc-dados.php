<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        #Variaveis
        $valor = isset($_GET["tValor"])?$_GET["tValor"]:0;

        if( $valor == 0 ){
            echo "O valor $valor é igual a Zero";
        }
        else if( $valor > 0 ){   #Positivo
                echo "O valor $valor é Positivo";
        }
        else 
            echo "O valor $valor é Negativo";
    ?>
    <br>
    <a href="pegando-dados.html" target="_self" rel="prev">Voltar</a>
    
</body>
</html>

