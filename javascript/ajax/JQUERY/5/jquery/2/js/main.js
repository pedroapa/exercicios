function buscaCep(){
    //Criando os controles
    let cep = $("#cep").val();
    //retirando o hifen
    let searc = cep.replace("-", "")
    console.log(searc)

    //Usar o ajax com jquery
    $.get("https://viacep.com.br/ws/"+searc+"/json/", function(resposta){
            //resposta.json()
            var inf = JSON.parse(resposta)
            $("#logradouro").HTML(inf.logradouro)
    })
    .fail(function(jqXHR, textStatus, resposta){
        //alert('[EROOR] Houve um erro: ' + resposta)
    })


}