function Buscar() {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById("datos");
    filter = input.value.toUpperCase(); //filtra las peliculas
    table = document.getElementById("tablaDatos");
    tr = table.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {  //for para buscar columna por columna
      td = tr[i].getElementsByTagName("td")[0]; //td: buscar x cada columna
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) { //encontro pelicula
          tr[i].style.display = "";
          } else {  //si NO ENCUENTRA, es decir, menor -1
          tr[i].style.display = "none";
        }
      }       
    }
  }
      
  