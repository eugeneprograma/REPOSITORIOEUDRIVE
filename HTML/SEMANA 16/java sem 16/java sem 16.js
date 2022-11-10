//----------------------------------------------------------------------//
// Obtener los elementos con class="column"
var elements = document.getElementsByClassName("column");

// Declaracion variable for 
var i;
// List View
function listView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "100%";
    elements[i].style.display = "flex";
    elements[i].style.justifyContent = "center";
    elements[i].style.alignItems= "center";
  }
}

// Grid View
function gridView() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.width = "33.33%";
         
  }
}

/* Agrega clase activa al botón actual (iluminado) */
var container = document.getElementById("btnContainer");
var btns = container.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
