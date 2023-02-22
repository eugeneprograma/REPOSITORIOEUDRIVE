var cambioBody = function () {
    var bodyL = document.getElementById('body');
    if (bodyL.className == 'bodyL') {
        bodyL.className = 'bodyO'

    } else {
        bodyL.className = 'bodyL'

    }
}
var cambioHeader = function () {
    var headerL = document.getElementById('header');
    if (headerL.className == 'headerL') {
        headerL.className = 'headerO'
    } else {
        headerL.className = 'headerL'

    }
};
var cambioContainer = function () {
    var containerL = document.getElementById('Container');
    if (containerL.className == 'container containerL') {
        containerL.className = 'container containerO'
    } else {
        containerL.className = 'container containerL'
    }

};

var cambioBlanco = function () {
    var Blanco = document.getElementById('Blanco');
    if (Blanco.className == 'main row Blanco') {
        Blanco.className = 'main row Gris'
    } else {
        Blanco.className = 'main row Blanco'
    }

};

//Función que convoca cada cambio en Productos
var cambio = function () {
    cambioBody();
    cambioContainer();
    cambioBlanco();
    cambioHeader();

};

//  BOTON TOGGLE SWITCHE
const chk = document.getElementById('chk');
chk.addEventListener('change', cambio);
