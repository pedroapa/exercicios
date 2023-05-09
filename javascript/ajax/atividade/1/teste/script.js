let res = window.document.querySelector('div#result')

function processa() {
    const xhttp = new XMLHttpRequest()
    xhttp.onload = function() {
        res.innerHTML = this.responseText;
    }
    xhttp.open("GET", "pegaQtd.php")
    xhttp.send() 
}      