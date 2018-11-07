const hiddenX = document.getElementById('hiddenX');

document.querySelectorAll('.coord_x > input[type="button"]').forEach((element) =>{
 element.addEventListener('click', function(){
    hiddenX.value = this.value;
 });
});