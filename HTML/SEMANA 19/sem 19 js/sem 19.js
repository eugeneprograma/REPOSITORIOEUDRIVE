function openMenu(){
    document.getElementById("mainMenu").style.width="470px";//clave para vista en celular//
    document.getElementById("mainMenu").style.display="flex";
    document.getElementById("mainMenu").style.height="1000px";
    document.getElementById("openmenu").style.display="none";
    }
    
    function CLOSENAV(){
    document.getElementById("mainMenu").style.width="0";
    document.getElementById("mainMenu").style.transition="0.9s all";
    window.location.reload()// RELOAD: recarga la pagina.es lo mismo de pulsar tecla F5
    }
    