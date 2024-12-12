

window.addEventListener('DOMContentLoaded', () => {

    const imgBL = document.getElementById('img-bl');
    const imgTL = document.getElementById('img-tl');
    const imgBR = document.getElementById('img-br');
    const imgTR = document.getElementById('img-tr');

    const btnReset = document.getElementById('resetBut');

    console.log("The button is: "+btnReset);

    btnReset.addEventListener('click', () => {
        console.log('Imprimiendo desde el evento');
        const img = $('#img-bl').src;
        $('#img-bl').attr('src','img/puzzle/big_sale_bottom_left.jpg');
        imgTL.setAttribute('src','img/puzzle/big_sale_top_left.jpg');
        imgBR.setAttribute('src','img/puzzle/big_sale_bottom_right.jpg');
        imgTR.setAttribute('src', 'img/puzzle/big_sale_top_right.jpg');
        console.log('The img br is: '+img);
    });

    
});







