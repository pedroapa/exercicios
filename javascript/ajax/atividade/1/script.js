//Criação dos objetos   
let res = window.document.querySelector('div#result')
let lista = window.document.querySelector('select#cSelProd')

function pesquisar(){
    //Parte responsavel por AJAX
    const xhttp = new XMLHttpRequest()

    xhttp.onload = function(){
        res.innerHTML = this.responseText
    }

    let idProd = 9
    let tamanho = lista.length

    if(lista.selected === 1){
        idProd = 1
    }
    window.alert(`O tamano da lista ${idProd}`)

    xhttp.open("GET", "pegaQtd.php?idProd="+idProd)
    xhttp.send()

}