function processa() {
    /*var t1 = document.getElementById("termo1").value;
    var t2 = document.getElementById("termo2").value;*/
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
        document.getElementById("result").innerHTML = this.responseText;
    }
    xhttp.open("GET", "pegaQtd.php");
    xhttp.send();    
}      