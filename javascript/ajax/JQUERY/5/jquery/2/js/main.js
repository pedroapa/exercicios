function buscaCep(){
    //Criando os controles
    let cep = $("#cep").val();
    //retirando o hifen
    let searc = cep.replace("-", "")
    console.log(searc)

    $.ajax({
        method: "GET",
        url: "https://viacep.com.br/json",
        data: seacr
    })
    .done( function(resposta){
        console.log('Deu certo, voltei com resposta do servidor')
    })
    .fail( function (jqXHR, textStatus, resposta){
        console.log('Aconteceu um erro: '+resposta)
    })

    /*
    //Usar o ajax com jquery
    $.get("https://viacep.com.br/"+searc+"/json", function(resposta){
        console.log('Deu certo, voltei com resposta do servidor')
    })
    */

    
}