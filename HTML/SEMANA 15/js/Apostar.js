function apostar(){
    var a=Math.round(Math.random()*10);
    //round. aproxima numero hacia arriba. Ej: si sale "4,6" lo aproxima a "5"
    //random*10 , el 10 indica que los aleatorios van de 1 a 10, es decir se puede poner cualquier random. Ej: random()*50 > haria 50 numeros aleatorios
//getElementById: unir variables de 
    document.getElementById("resultado").value=a;
    var b=document.getElementById("apostado").value;
    if (a==b){
      document.getElementById("salida").value="ganó";
    } else {
      document.getElementById("salida").value="perdió";
    }
  }
  //--------

  function cancel(){ //borrar contenido y dejar espacio blanco
    document.getElementById("apostado").value=" ";
    document.getElementById("resultado").value=" ";
    document.getElementById("salida").value=" ";
  }
  