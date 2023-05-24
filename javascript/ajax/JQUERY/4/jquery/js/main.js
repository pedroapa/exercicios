function buscaCep(){
    //Criando os controles
    let cep = $("#cep").val();
    //retirando o hifen
    let searc = cep.replace("-", "")

    //Usar o ajax com jquery
    $.get("https://viacep.com.br/ws/"+searc+"/json/", function(resposta){
            $("#logradouro").val(resposta.logradouro)
            $("#bairro").val(resposta.bairro)
            $("#cidade").val(resposta.localidade)
            $("#estado").val(resposta.uf)
    })
    .fail(function(jqXHR, textStatus, resposta){
        alert('[EROOR] Houve um erro: ' + resposta)
    }) 
}