//Criação dos objetos   
let botao = window.document.querySelector('input#btnPesq')
let res = window.document.querySelector('div#result')
let lista = window.document.querySelector('select#cSelProd')

function pesquisar(){
    //Parte responsavel por AJAX
    const xhttp = new XMLHttpRequest()
    xhttp.onload = function(){
        res.innerHTML = this.responseTExt
    }
    xhttp.open("GET", "pegaQtd.php")
    xhttp.send()

}