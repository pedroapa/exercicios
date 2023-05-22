function testeAJAX(){
    var n1 = $("#num1").val();
    var n2 = $("#num2").val();

    //soma.php?val1="+n1+"&val2="+n2
    //`soma.php?val1=${n1}&val2=${n2}`
    //"soma.php?val1=11&val2=8"

    $.get("soma.php?val1="+n1+"&val2="+n2, function(resultado){
        //console.log(resultado)
        $("#result").html(resultado);
    })
    
}