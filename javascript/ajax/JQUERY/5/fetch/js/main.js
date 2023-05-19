//Criando controle
const cep = document.getElementById("cep")
const endereco = document.getElementById("logradouro")
const bairro = document.getElementById("bairro")
const cidade = document.getElementById("localidade")
const estado = document.getElementById("uf")

function procCep(){
    let search = cep.value.replace("-", "")
    const options = {
        method: 'GET',
        mode: 'cors',
        cache: 'default'
    }

    fetch(`https://viacep.com.br/ws/${search}/json/`)
    .then(function(response){
        //JSON.parse(this.responseText)
        response.json()
        //Atualizando
        endereco.value = response.logradouro
        console.log("Chegou!")
    })
    .catch(function(){
        console.log("Chegou!")
    })
}

cep.addEventListener('mouseout', procCep)
