<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../_css/estilo.css">
    <title>Processando a Separação</title>
</head>
<body>
    <div>
        <?php
        $numero = isset($_GET["num"])? $_GET["num"]: 00000;
        $num_backup = $numero; #backup caso precise do numero 
            #5 Algorismo
        $alg1 = 0;
        $alg2 = 0;
        $alg3 = 0;
        $alg4 = 0;
        $alg5 = 0;

        # Mensagem de erro caso insira valor invalido
        if ($numero < 10000 || $numero > 99999) {
            echo "<h1>ERRO! VALOR INVALIDO</h1>";

        }
        # eu ia proteger a entrada de dados, mas como o código ficou muito grande deixei pra la.

        echo "Você digitou $numero <br>";
            #Achar primerio algorismo
        if ( $numero >= 10000 && $numero < 20000 ){
            $alg1 = 1;
        }

        if ( $numero >= 20000 && $numero < 30000 ){
            $alg1 = 2;
        }

        if ( $numero >= 30000 && $numero < 40000 ){
            $alg1 = 3;
        }

        if ( $numero >= 40000 && $numero < 50000 ){
            $alg1 = 4;
        }

        if ( $numero >= 50000 && $numero < 60000 ){
            $alg1 = 5;
        }

        if ( $numero >= 60000 && $numero < 70000 ){
            $alg1 = 6;
        }

        if ( $numero >= 70000 && $numero < 80000 ){
            $alg1 = 7;
        }

        if ( $numero >= 80000 && $numero < 90000 ){
            $alg1 = 8;
        }

        if ( $numero >= 90000 && $numero < 100000 ){
            $alg1 = 9;
        }

        # $numero = $numero - ( $alg1 * 10000); #jeto iniciante
        $numero -= $alg1 * 10000;


        #Segundo algorimo 
        if ( $numero >= 1000 && $numero < 2000 ){
            $alg2 = 1;
        }

        if ( $numero >= 2000 && $numero < 3000 ){
            $alg2 = 2;
        }

        if ( $numero >= 3000 && $numero < 4000 ){
            $alg2 = 3;
        }

        if ( $numero >= 4000 && $numero < 5000 ){
            $alg2 = 4;
        }

        if ( $numero >= 5000 && $numero < 6000 ){
            $alg2 = 5;
        }

        if ( $numero >= 6000 && $numero < 7000 ){
            $alg2 = 6;
        }

        if ( $numero >= 7000 && $numero < 8000 ){
            $alg2 = 7;
        }

        if ( $numero >= 8000 && $numero < 9000 ){
            $alg2 = 8;
        }

        if ( $numero >= 9000 && $numero < 10000 ){
            $alg2 = 9;
        }

        $numero -= $alg2 * 1000;

        # Terceiro Algorismo
        if ( $numero >= 100 && $numero < 200 ){
            $alg3 = 1;
        }

        if ( $numero >= 200 && $numero < 300 ){
            $alg3 = 2;
        }

        if ( $numero >= 300 && $numero < 400 ){
            $alg3 = 3;
        }

        if ( $numero >= 400 && $numero < 500 ){
            $alg3 = 4;
        }

        if ( $numero >= 500 && $numero < 600 ){
            $alg3 = 5;
        }

        if ( $numero >= 600 && $numero < 700 ){
            $alg3 = 6;
        }

        if ( $numero >= 700 && $numero < 800 ){
            $alg3 = 7;
        }

        if ( $numero >= 800 && $numero < 900 ){
            $alg3 = 8;
        }

        if ( $numero >= 900 && $numero < 1000 ){
            $alg3 = 9;
        }

        $numero -= $alg3 * 100;

        # Quarto Algorismo
        if ( $numero >= 10 && $numero < 20 ){
            $alg4 = 1;
        }

        if ( $numero >= 20 && $numero < 30 ){
            $alg4 = 2;
        }

        if ( $numero >= 30 && $numero < 40 ){
            $alg4 = 3;
        }

        if ( $numero >= 40 && $numero < 50 ){
            $alg4 = 4;
        }

        if ( $numero >= 50 && $numero < 60 ){
            $alg4 = 5;
        }

        if ( $numero >= 60 && $numero < 70 ){
            $alg4 = 6;
        }

        if ( $numero >= 70 && $numero < 80 ){
            $alg4 = 7;
        }

        if ( $numero >= 80 && $numero < 90 ){
            $alg4 = 8;
        }

        if ( $numero >= 90 && $numero < 100 ){
            $alg4 = 9;
        }

        $numero -= $alg4 * 10;

        # Quinto Algorismo
        if ( $numero == 1 ){
            $alg5 = 1;
        }

        if ( $numero == 2 ){
            $alg5 = 2;
        }

        if ( $numero == 3 ){
            $alg5 = 3;
        }

        if ( $numero == 4 ){
            $alg5 = 4;
        }

        if ( $numero == 5 ){
            $alg5 = 5;
        }

        if ( $numero == 6 ){
            $alg5 = 6;
        }

        if ( $numero == 7 ){
            $alg5 = 7;
        }

        if ( $numero == 8 ){
            $alg5 = 8;
        }

        if ( $numero == 9 ){
            $alg5 = 9;
        }

        $numero -= $alg5;

        echo "Resultado<br>$alg1   $alg2   $alg3   $alg4   $alg5 <br>";  
        ?>
        <a href="separar-algorismo.html" target="_self" rel="prev"><br>Voltar</a>
    </div>
    
</body>
</html>