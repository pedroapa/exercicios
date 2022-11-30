<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculando a Média</title>
</head>
<body>
    <?php
        $val1 = isset($_GET["tVal1"])?$_GET["tVal1"]:0;
        $val2 = isset($_GET["tVal2"])?$_GET["tVal2"]:0;
        $val3 = isset($_GET["tVal3"])?$_GET["tVal3"]:0;

        $media = ($val1 + $val2 + $val3) / 3;

        echo "A notas $val1, $val2 e $val3 tem a média " . number_format($media, 2, ",", ".");
    ?>
    <br>
    <a href="media.html" target="_self" rel="prev">Clique aqui para voltar</a>

</body>
</html>