
console.log("From get input");

window.addEventListener('DOMContentLoaded', () => {

    const nameInput = document.getElementById('nameInput');

    nameInput.addEventListener('input', getInfoComponents());

    console.log("The input element is: " + nameInput.value);

});


function getInfoComponents(){
    nameInput.value = '9';
}


