const results = document.querySelectorAll('.previous_checks td');
for(var i = 0; i < results.length; i++){
    if(results[i].innerHTML == "false"){
        results[i].style.color = "red";
        results[i].style.fontWeight = "bold";
    }
    else if (results[i].innerHTML == "true") {
        results[i].style.color = "green";
        results[i].style.fontWeight = "bold";
    }
}