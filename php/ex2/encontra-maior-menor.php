<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../_css/estilo.css">
    <title>Encontrar Maior e o Menor</title>
</head>
<body>
    <div>
        <?php   #vou tentar encontrar de uma forma mais otimizada, porem usando if simples
            $numero1 = isset($_GET["num1"])? $_GET["num1"]: 0;
            $numero2 = isset($_GET["num2"])? $_GET["num2"]: 0;
            $numero3 = isset($_GET["num3"])? $_GET["num3"]: 0;
            $numero4 = isset($_GET["num4"])? $_GET["num4"]: 0;
            $numero5 = isset($_GET["num4"])? $_GET["num5"]: 0;
            $maior = -1;
            $menor = 9999;

            echo "VALORES INSERIDOS <br>$numero1 | $numero2 | $numero3 | $numero4 | $numero5 |<br><br>";

            # Logica ligada Maior
           
            if ( ($numero1 > $numero2) && ($numero1 > $numero2) && ($numero1 > $numero3) && ($numero2 > $numero4) && ($numero1 > $numero5) ) {
                $maior = $numero1;
            }
            elseif ( ($numero2 > $numero3) && ($numero2 > $numero4) && ($numero2 > $numero5) ) {
                $maior = $numero2;
            }
            elseif ( ($numero3 > $numero4) && ($numero3 > $numero5) ) {
                $maior = $numero3;
            }
            elseif ( ($numero4 > $numero5) ) {
                $maior = $numero4;
            }
            else {
                $maior = $numero5;
            }

            # Encontrar o menor

            if ( ($numero1 < $numero2) && ($numero1 < $numero2) && ($numero1 < $numero3) && ($numero2 < $numero4) && ($numero1 < $numero5) ) {
                $menor = $numero1;
            }
            elseif ( ($numero2 < $numero3) && ($numero2 < $numero4) && ($numero2 < $numero5) ) {
                $menor = $numero2;
            }
            elseif ( ($numero3 < $numero4) && ($numero3 < $numero5) ) {
                $menor = $numero3;
            }
            elseif ( ($numero4 < $numero5) ) {
                $menor = $numero4;
            }
            else {
                $menor = $numero5;
            }
            
            echo "O maior número é $maior <br>E o menor número é $menor<br>";
        ?>
        <a href="cinco-valores.html" target="_self" rel="prev">Voltar</a>
    </div>
    
</body>
</html>