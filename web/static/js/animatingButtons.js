let buttons = document.querySelectorAll('.coord_x > [type="button"]');
for (let i = 0; i < buttons.length; i++) {
    buttons[i].onclick = function() {
        setDefault(buttons);
        this.style.backgroundColor = "#bb1c24";
    }
}

function setDefault(elements) {
    for (let i = 0; i < elements.length; i++) {
        elements[i].style.backgroundColor = "#ed1c24";
    }
}