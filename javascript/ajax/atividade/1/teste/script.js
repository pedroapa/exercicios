let res = window.document.querySelector('div#result')

function processa() {
    /*var t1 = document.getElementById("termo1").value;
    var t2 = document.getElementById("termo2").value;*/
    const xhttp = new XMLHttpRequest()
    xhttp.onload = function() {
        res.innerHTML = this.responseText;
    }
    xhttp.open("GET", "pegaQtd.php")
    xhttp.send() 
}      