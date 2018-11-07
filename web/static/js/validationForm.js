document.querySelectorAll('input[type="text"]').forEach((element) => {
    element.addEventListener('input', replaceY);
    element.addEventListener('change', replaceY);

    function replaceY(){
        this.value = this.value.replace(/[^0-9.,]/, "");
    }
});



