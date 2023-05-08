<?php 
    include "conexao.php"
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estilo.css">
    <title>Modelo de Exercicio</title>
</head>
<body>
    <header>
        <h1>Controlador de Estoque</h1>
    </header>
    <section>
        <div>
            <p>
                <label for="">Produto</label>
                <select name="tSelProd" id="cSelProd">
                    <?php 
                        $sql = "SELECT id, name FROM produtosimportados";
                        $res = mysqli_query($conn, $sql);
                        while($linha = mysqli_fetch_array($res)){
                            $vId = $linha[0]
                            $vProduto = $linha[1]
                            echo "<option id='$vId'>$Produto</option>"
                        }
                    ?>
                    
                </select>
            </p>
        </div>
        <div>
            Ola
        </div>

    </section>
    <footer>
        <p>&copy; CursoemVideo</p>
    </footer>
    
    <script src="script.js"></script>
</body>
</html>