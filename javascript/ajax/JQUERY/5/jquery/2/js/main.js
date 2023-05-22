function buscaCep(){
    //Criando os controles
    let cep = $("#cep").val();
    //retirando o hifen
    let searc = cep.replace("-", "")
    console.log(searc)

    //Usar o ajax com jquery
    $.get("https://viacep.com.br/"+searc+"/json", function(resposta){
        console.log('Deu certo, voltei com resposta do servidor')
    })

    
}