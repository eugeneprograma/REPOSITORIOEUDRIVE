function prefer(){
    let num=1;
    let res=true;
        while (num<=99 &&  res==true){
        numUser= prompt("Ingrese su numero de usuario PREFERENCIAL");
        if (nomuser!==null){
            var n=num.toString().padStart(2,'0');
            //toString: poner numero a texto
            //padStart: para rellenar dos digitos a la izquierda. En este caso coloca DOS digitos, se pueden colocar mas.
            res=confirm("ESTIMADO USUARIO:"+" "+" "+nomuser+"\n"+"SU TURNO ES:"+" "+"E"+n+"\n"+"ESPERE SU LLAMADO...");
            num++;
            }else{
                alert("ERROR EN TURNO …");
                break;
            }
        }
    }

function user(){
        let num=1;
        let res=true;
        while (num<=99 && res==true){
            nomuser=prompt("INGRESE SU NOMBRE DE USUARIO NO PREFERENCIAL");
            if (nomuser!==null){
                var n=num.toString().padStart(2,'0');
                res=confirm("ESTIMADO USUARIO:"+" "+" "+nomuser+"\n"+"SU TURNO ES:"+" "+"A"+n+"\n"+"ESPERE SU LLAMADO...");
                num++;
                }else{
                    alert("ERROR EN TURNO…");
                    break;
                }
            }
        }

