//Criação dos objetos   
let res = window.document.querySelector('div#result')
//let lista = window.document.querySelector('select#cSelProd')

function pesquisar(){
    //Parte responsavel por AJAX
    const xhttp = new XMLHttpRequest();

    xhttp.onload = function(){
        res.innerHTML = this.responseText;
    }
    xhttp.open("GET", "pegaQtd.php");
    xhttp.send();

}