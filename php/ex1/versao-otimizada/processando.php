<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../_css/estilo.css">
    <title>Fazendo 4 Calculos</title>
</head>
<body>
    <div>
        <?php
            $valor1 = isset($_GET["val1"])?$_GET["val1"]:0;
            $valor2 = isset($_GET["val2"])?$_GET["val2"]:0;
            $valor3 = isset($_GET["val3"])?$_GET["val3"]:0;
            $maior = 0;
            $menor = 9999;
            echo "Os valores inteiros inseridios foram: $valor1 $valor2 $valor3 <br>";
            $soma = $valor1 + $valor2 + $valor3;
            $media = ($valor1 + $valor2 + $valor3) / 3;
            $produto  = $valor1 * $valor2 * $valor3;
            echo "  SOMA = $soma <br>MÉDIA = " .number_format($media, 2). "<br>PRODUTO = $produto <br>";

            # Encontrar o maior com if simples
            /* forma sem usar if fundido com else
           if ($valor3 > $valor1 && $valor3 > $valor2) {
                $maior = $valor3;
            }
            else {
                if ($valor2 > $valor1 && $valor2 > $valor3) {
                    $maior = $valor2;
                }
                else {
                    $maior = $valor1;
                }
            } */

            if ($valor3 > $valor1 && $valor3 > $valor2) {
                $maior = $valor3;
            }
            elseif ($valor2 > $valor1 && $valor2 > $valor3) {
                $maior = $valor2;
            }
            else {
                $maior = $valor1;
            }
            

            # Agora o menor
            /* versão sem fundir if com else
            if ($valor3 < $valor1 && $valor3 < $valor2) {
                $menor = $valor3;
            }
            else {
                if ($valor2 < $valor1 && $valor2 < $valor3) {
                    $menor = $valor2;
                }
                else {
                    $menor = $valor1;
                }
            } */
            if ($valor3 < $valor1 && $valor3 < $valor2) {
                $menor = $valor3;
            }
            else if ($valor2 < $valor1 && $valor2 < $valor3) {
                $menor = $valor2;
            }
            else {
                $menor = $valor1;
            }
            

            echo "O maior valor: $maior <br>O menor valor: $menor <br>";

        ?>
        <a href="cal-3nums.html" target="_self" rel="prev">Voltar</a>
    </div>
    
</body>
</html>