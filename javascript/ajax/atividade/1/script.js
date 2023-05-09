//Criação dos objetos   
let res = window.document.querySelector('div#result')
let itens = window.document.getElementsByTagName('option')

function pesquisar(){
    //Parte responsavel por AJAX
    const xhttp = new XMLHttpRequest()

    xhttp.onload = function(){
        res.innerHTML = this.responseText
    }

    let idProd = 9
    let tamanho = itens.length
    let i = 0

    while( i < tamanho ){
        if(itens[i].selected){
            idProd = Number(itens[i].id)
        }
        i++
    }

    //window.alert(`O tamano da lista ${idProd}`)

    xhttp.open("GET", "pegaQtd.php?idProd="+idProd)
    xhttp.send()

}