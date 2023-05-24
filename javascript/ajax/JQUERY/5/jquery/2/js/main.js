function buscaCep(){
    //Criando os controles
    let cep = $("#cep").val();
    //retirando o hifen
    let searc = cep.replace("-", "")
    console.log(searc)

    //Usar o ajax com jquery
    $.get("https://viacep.com.br/ws/"+searc+"/json/", function(resposta){
            $("#logradouro").val(resposta.logradouro)
            $("#bairro").val(resposta.bairro)
            //Cidade
            $("#localidade").val(resposta.localidade)
            //Estado
            $("#uf").val(resposta.uf)
    })
    .fail(function(jqXHR, textStatus, resposta){
        //alert('[EROOR] Houve um erro: ' + resposta)
    })


}