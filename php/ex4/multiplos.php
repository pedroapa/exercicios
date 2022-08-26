<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../_css/estilo.css">
    <title>Vendo são Dois Números são Multiplos</title>
</head>
<body>
    <div>
        <?php
            $numero1 = isset($_GET["n1"])? $_GET["n1"]: 0;
            $numero2 = isset($_GET["n2"])? $_GET["n2"]: 0;
            $maior = 0;
            echo "Números escolhidos: $numero1 e $numero2 <br>";

            # Primeiro encontrar o maior valor porque envolve uma divisão
            if ($numero1 > $numero2) {
                $maior = $numero1;  
            }
            else {
                $maior = $numero2;
            }

            echo ( ($maior % $numero2 == 0 )? "Os dois números $numero2 e $numero1 são multiplos. <br>": "Os dois números $numero2 e $numero1 não são multiplos. <br>");
        ?>
        <a href="num-multiplos.html" target="_self" rel="prev">Voltar</a>
    </div>
    
</body>
</html>