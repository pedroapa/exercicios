<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../_css/estilo.css">
    <title>Processando o Número</title>
</head>
<body>
    <div>
        <?php
            $numero = isset($_GET["num"])? $_GET["num"]: 0;

            echo "Você digitou: $numero <br>";
            echo "Este é ". ( ($numero % 2 == 0 )? "PAR": "IMPAR");

            /* Da para fazer assim também
            if ($numero % 2 == 0) {
                echo "Este número é PAR";
            }
            else {
                echo "Este número é IMPAR";
            } 
             
            # Na teoria daria certo assim aqui também
            Eu faria direto e com valor do resto ver se é par, quando da 0 e ai eu faço resposta negada. Podia fazer também sem o negado, mas teria que inverter, colocar que é impar primeiro
            if ( !($numero % 2)) {
                echo "Este número é PAR";
            }
            else {
                echo "Este número é IMPAR";
            } */

           
        ?>
        <a href="impar-par.html" target="_self" rel="prev"><br> Voltar</a>
    </div>
    
</body>
</html>