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

            echo "VALORES INSERIDOS <br>$numero1 | $numero2 | $numero3 | $numero4 | $numero5 |<br>";

            #vou tentar fazer com a mesma lógica que usamos para fazer com laço de repetição
            $maior = $numero1;
            if ($numero2 > $maior) {
                $maior = $numero2;
            }
            else {
                if ($numero3 > $maior) {
                    $maior = $numero3;
                }
                else {
                    if ($numero4 > $maior) {
                        $maior = $numero4;
                    }
                    else {
                        $maior = $numero5;
                    }
                }
            }

            echo "O maior número é $maior <br>";
        ?>
    </div>
    
</body>
</html>