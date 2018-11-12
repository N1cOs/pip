document.querySelectorAll('input[type="text"]').forEach((element) => {
    element.addEventListener('input', replaceY);
    element.addEventListener('change', replaceY);

    function replaceY(){
        this.value = this.value.replace(/[^0-9.,]/, "");
    }

});

document.getElementById('area_form').onsubmit = () =>{
    const textY = document.querySelector('[name="valueOfY"]');
    textY.value = textY.value.replace(/,/, '.');
    const valueOfX = parseInt(document.getElementById('hiddenX').value, 10),
        valueOfY = parseFloat(textY.value),
        valueOfR = parseFloat(document.querySelector('[name="valueOfR"]').value);
    let result = true;

    if(isNaN(valueOfX) || valueOfX < -2 || valueOfX > 2){
        alert('Выберите значение по координате X от -2 до 2');
        result = false;
    }
    if(isNaN(valueOfY) ||valueOfY < -5 || valueOfY > 3){
        alert('Введите значение по координате Y от -5 до 3');
        result = false;
    }
    if(isNaN(valueOfR) || valueOfR < 1 || valueOfR > 4){
        alert('Введите значение радиуса R от 1 до 4');
        result = false;
    }
    return result;
};

document.querySelector('canvas').addEventListener('click', () => {
    let text = parseFloat(document.querySelector('input[name="valueOfR"]').value);
    if (text && text >= 1 && text <= 4) {
        document.querySelector('form').submit();
    }
    else{
        alert('Введите значение радиуса R от 1 до 4');
    }

});
