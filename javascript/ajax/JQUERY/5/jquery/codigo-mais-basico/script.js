function testeAJAX(){
   
    var n1 = $("#num1").val();
    var n2 = $("#num2").val();
    
    /*
    var n1 = document.getElementById('num1').value
    var n2 = document.getElementById('num2').value
    */

    console.log(`n1 = ${n1} e n2 = ${n2}`)
    /*
    `${n1}`
    `${n1}`
    */

    $.ajax({
        method: "GET",
        url: "soma.php",
        data: { val1: `${n1}`, val2: `${n1}` }
    })
    .done( function(msg){
        $("#result").html(msg);
        console.log(msg)
    })
    .fail(function (jqXHR, textStatus, msg){
        alert(msg);
    });

    /*
    $.get("soma.php", {val1: n1, val2: n2})
        .done(function(data ) {
            //console.log(`o resultado = ${data}`)
            $("#result").html(data);
        });

    */
}