function testeAJAX(){
    var n1 = $("#num1").val();
    var n2 = $("#num2").val();

    $.get("soma.php", {val1: n1, val2: n2})
        .done(function(data ) {
            //console.log(`o resultado = ${data}`)
            $("#result").html(data);
        });
}