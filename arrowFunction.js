function sum(a,b) {
    return a + b
}

let sum2 = (a,b) =>  a + b

function isPositive(num) {
    return num >= 0
}

let isPositive2 = num => num >= 0

function randomNumber() {
    return Math.random
}

let randomNumber2 = () => Math.random

document.addEventListener('click', function() {
    console.log('Click')
})

document.addEventListener('click', () => console.log('Click'))
