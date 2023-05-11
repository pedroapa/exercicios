<?php 
    include "conexao.php";
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
        <h1>Testando as saidas</h1>
    </header>
    <section>
        <div>
            <p>Vou mostrar a data normal, depois formatada pelo banco e por ultimo, formatada pelo php</p>
        </div>
        <div>
            <table>
                <thead>
                    <th>Nome</th>
                    <th>Data Nascimento sem formatação</th>
                    <th>Data formatada pelo mysql</th>
                    <th>Data Formatada por php</th>
                </thead>
                <tbody>
                    <?php 
                        $sql = "SELECT nome, dt_nascimento, DATE_FORMAT(dt_nascimento, '%d/%m/%Y') as data_formatada, dt_nascimento  FROM usuario;";
                        $res = mysqli_query($conn, $sql);
                        while( $row = mysqli_fetch_array($res) ){
                            echo "<tr>";
                            echo "<td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>".date('d/m/Y', strtotime($row[3]))."</td>";
                            echo "</tr>";
                        }
                        mysqli_close($conn);
                    ?>
                </tbody>
            </table>
            
        </div>

    </section>
    <footer>
        <p>&copy; CursoemVideo</p>
    </footer>
    
    <script src="script.js"></script>
</body>
</html>