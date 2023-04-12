//objeto(vetor) de todos campos nomes de livros
var OnomLivro = window.document.getElementsByClassName('nomLivro')

//objeto(vetor) de todos campos da qtd de paginas
var OqtdPagina = window.document.getElementsByClassName('qtdPagina')

function mudaCorLiv(){
    //Mudar a cor de fundo de todos os nomes de livros para azul
    OnomLivro[0].style.background = '#4e88df'
    OnomLivro[1].style.background = '#4e88df'
    OnomLivro[2].style.background = '#4e88df'
    OnomLivro[3].style.background = '#4e88df'
    OnomLivro[4].style.background = '#4e88df'

    //Mudar todas as cores do funda da qtd de pagina para branco
    OqtdPagina[0].style.background = 'white'
    OqtdPagina[1].style.background = 'white'
    OqtdPagina[2].style.background = 'white'
    OqtdPagina[3].style.background = 'white'
    OqtdPagina[4].style.background = 'white'
}

function mudaCorPag(){
    //Mudar todas as cores do funda da qtd de pagina para branco
    OqtdPagina[0].style.background = 'green'
    OqtdPagina[1].style.background = 'green'
    OqtdPagina[2].style.background = 'green'
    OqtdPagina[3].style.background = 'green'
    OqtdPagina[4].style.background = 'green'

    //Mudar a cor de fundo de todos os nomes de livros para azul
    OnomLivro[0].style.background = 'white'
    OnomLivro[1].style.background = 'white'
    OnomLivro[2].style.background = 'white'
    OnomLivro[3].style.background = 'white'
    OnomLivro[4].style.background = 'white'
}
