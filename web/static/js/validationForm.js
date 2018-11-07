function validCheckboxes() {
    let checkboxes = document.getElementsByName("coord_x");
    let amount = 0;
    for (let i = 0; i < checkboxes.length; i++) {
        if (checkboxes[i].checked) {
            amount++;
        }
    }
    return amount == 1;
}

function setRadius(radiusValue) {
    document.getElementById("radius").value = radiusValue;
}

function validY() {
    let textY = document.querySelector('input[type="text"]').value;
    textY = textY.replace(",", ".");
    let afterDot = textY.charAt(textY.indexOf(".") + 1);
    if (textY >= -5 && textY <= 5 && textY != "" && afterDot)
        return true;
    return false;
}

function validForm() {
    let valid = true;
    if (!validCheckboxes()) {
        alert("Выберите одно значение по координате X");
        valid = false;
    }
    if (!validY()) {
        alert("Выберите значение от -5 до 5 по координате Y. Внимание, "+
            " после разделителя между дробной и целой частью должна быть минимум одна цифра");
        valid = false;
    }
    if (document.getElementById("radius").value == -1) {
        alert("Выберите значение радиуса");
        valid = false;
    }
    return valid;
}