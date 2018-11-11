const results = document.querySelectorAll('.previous_checks td');
for(let i = 0; i < results.length; i++){
    if(results[i].innerText === 'false'){
        results[i].innerText = 'Промах';
        results[i].style.color = 'red';
        results[i].style.fontWeight = 'bold';
    }
    else if (results[i].innerText === 'true') {
        results[i].innerText = 'Попадание';
        results[i].style.color = 'green';
        results[i].style.fontWeight = 'bold';
    }
}