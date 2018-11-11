var radius = 100;
const canvas = document.getElementById('myCanvas');
const ctx = canvas.getContext('2d');
const width = canvas.width;
const height = canvas.height;
const coordCenter = width / 2;

ctx.beginPath();
let startangel = 180 * Math.PI / 180;
let endangel = 270 * Math.PI / 180;
ctx.arc(coordCenter, coordCenter, radius / 2, startangel, endangel, false);
ctx.fillStyle = 'blue';
ctx.fill();
ctx.moveTo(width / 2, height / 2 - radius / 2);
ctx.lineTo(width / 2 - radius / 2, height / 2);
ctx.lineTo(width / 2, height / 2);
ctx.fill();
ctx.beginPath();
ctx.rect(width / 2, height / 2 - radius, radius, radius);
ctx.fill();
ctx.beginPath();
ctx.moveTo(width / 2, height / 2 + radius);
ctx.lineTo(width / 2 + radius, height / 2);
ctx.lineTo(width / 2, height / 2);
ctx.fill();
ctx.fillStyle = 'blue';
ctx.fill();
ctx.strokeStyle = 'black';
ctx.stroke();

ctx.beginPath();
ctx.moveTo(0, height / 2);
ctx.lineTo(width, height / 2);
ctx.strokeStyle = '#000';
ctx.stroke();
ctx.beginPath();
ctx.moveTo(width / 2, 0);
ctx.lineTo(width / 2, height);
ctx.stroke();

ctx.fillStyle = '#ed1c24';

function getMP(canvas, event) {
    let rect = canvas.getBoundingClientRect();
    return {
        x: event.clientX - rect.left,
        y: event.clientY - rect.top
    };
}


canvas.addEventListener('click', function (event) {
    let MP = getMP(canvas, event);
    console.log(MP.x, MP.y);
    ctx.beginPath();
    ctx.fillRect(MP.x, MP.y, 5, 5);
    ctx.fillStyle = '#ed1c24';
    ctx.fill();
});