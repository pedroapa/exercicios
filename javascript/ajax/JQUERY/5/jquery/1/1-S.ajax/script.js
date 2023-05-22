function testeAJAX(){
    var n1 = $("#num1").val();
    var n2 = $("#num2").val();

    $.ajax({
        method: "GET",
        url: "soma.php",
        data: { val1: n1, val2: n2 }
    })
    .done( function(msg){
        $("#result").html(msg);
    })
    .fail(function (jqXHR, textStatus, msg){
        alert(msg);
    });   
}