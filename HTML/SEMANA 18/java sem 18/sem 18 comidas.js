function mostrar()
      {
        let item1=document.getElementById('prod1');
        let item2=document.getElementById('prod2');
        let item3=document.getElementById('prod3');
        let adic=0;
        //1er. item de lista producto    
        if(item1.selectedIndex==0)
            {
                document.getElementById('desc01').value=""; 
                /*--*/
                
            }
            if(item1.selectedIndex==1)
            {
                document.getElementById('desc01').value="Hamburgueza Americana + Gaseosa Vaso+ Papas francesa";/*--*/ 
                document.getElementById('vau01').value=item1.options[item1.selectedIndex].value; 
                document.getElementById('vat01').value=(parseFloat(document.getElementById('cant01').value)*parseFloat(document.getElementById('vau01').value)|| 0).toFixed(2);
                //imagen01='<img src="/img/foto01.png">'//
                
            }
            if(item1.selectedIndex==2)
            {
                document.getElementById('desc01').value="Perro Americano + Gaseosa vaso+ Papa francesa";/*--*/
                document.getElementById('vau01').value=item1.options[item1.selectedIndex].value; 
                document.getElementById('vat01').value=(parseFloat(document.getElementById('cant01').value)*parseFloat(document.getElementById('vau01').value)|| 0).toFixed(2);
            }
            if(item1.selectedIndex==3)
            {
                document.getElementById('desc01').value="Pizza Hawaiana + Gaseosa vaso";/* */
                document.getElementById('vau01').value=item1.options[item1.selectedIndex].value; 
                document.getElementById('vat01').value=(parseFloat(document.getElementById('cant01').value)*parseFloat(document.getElementById('vau01').value)|| 0).toFixed(2);
            }
        //2do. item de factura    
        if(item2.selectedIndex==0)
            {
                document.getElementById('desc02').value=""; 
                /*--*/
                
            }
            if(item2.selectedIndex==1)
            {
                document.getElementById('desc02').value="Hamburgueza Americana + Gaseosa Vaso+ Papas francesa";/*--*/ 
                document.getElementById('vau02').value=item2.options[item2.selectedIndex].value; 
                document.getElementById('vat02').value=(parseFloat(document.getElementById('cant02').value)*parseFloat(document.getElementById('vau02').value)|| 0).toFixed(2);
                //imagen01='<img src="/img/foto01.png">'//
                
            }
            if(item2.selectedIndex==2)
            {
                document.getElementById('desc02').value="Perro Americano + Gaseosa vaso+ Papa francesa";/*--*/
                document.getElementById('vau02').value=item2.options[item2.selectedIndex].value;
                document.getElementById('vat02').value=(parseFloat(document.getElementById('cant02').value)*parseFloat(document.getElementById('vau02').value)|| 0).toFixed(2);
            }
            if(item2.selectedIndex==3)
            {
                document.getElementById('desc02').value="Pizza Hawaiana + Gaseosa vaso";/* */
                document.getElementById('vau02').value=item2.options[item2.selectedIndex].value;
                document.getElementById('vat02').value=(parseFloat(document.getElementById('cant02').value)*parseFloat(document.getElementById('vau02').value)|| 0).toFixed(2);
            }
            //3er. item de factura    
        if(item3.selectedIndex==0)
            {
                document.getElementById('desc03').value=""; 
                /*--*/
                
            }
            if(item3.selectedIndex==1)
            {
                document.getElementById('desc03').value="Hamburgueza Americana + Gaseosa Vaso+ Papas francesa";/*--*/ 
                document.getElementById('vau03').value=item3.options[item3.selectedIndex].value;
                document.getElementById('vat03').value=(parseFloat(document.getElementById('cant03').value)*parseFloat(document.getElementById('vau03').value)|| 0).toFixed(2);
                //imagen01='<img src="/img/foto01.png">'//
                
            }
            if(item3.selectedIndex==2)
            {
                document.getElementById('desc03').value="Perro Americano + Gaseosa vaso+ Papa francesa";/*--*/
                document.getElementById('vau03').value=item3.options[item3.selectedIndex].value;
                document.getElementById('vat03').value=(parseFloat(document.getElementById('cant03').value)*parseFloat(document.getElementById('vau03').value)|| 0).toFixed(2);
            }
            if(item3.selectedIndex==3)
            {
                document.getElementById('desc03').value="Pizza Hawaiana + Gaseosa vaso";/* */
                document.getElementById('vau03').value=item3.options[item3.selectedIndex].value;
                document.getElementById('vat03').value=(parseFloat(document.getElementById('cant03').value)*parseFloat(document.getElementById('vau03').value)|| 0).toFixed(2);
            }
            // Calcular Adicionales**********//
                if(document.getElementById('radio4').checked)
           {
            document.getElementById('adic0').value=3000;
           }
           else if(document.getElementById('radio5').checked)
              {
                document.getElementById('adic0').value=2500;
              }
              else if (document.getElementById('radio6').checked)
                  {
                    document.getElementById('adic0').value=2300;
                  }
            //Calcular valor subtotal
            document.getElementById('subt').value=(parseFloat(document.getElementById('vat01').value)+parseFloat(document.getElementById('vat02').value)+parseFloat(document.getElementById('vat03').value)+parseFloat(document.getElementById('adic0').value)|| 0).toFixed(2);
            // Calcular Iva**********//
            document.getElementById('iva').value=(parseFloat(document.getElementById('subt').value)*0.19|| 0).toFixed(2);
       
            // Calcular Descuento**********//
            if(document.getElementById('radio1').checked)
           {
                document.getElementById('desc').value=(parseFloat(document.getElementById('subt').value)*0.10|| 0).toFixed(2);
           }
           else if(document.getElementById('radio2').checked)
              {
                document.getElementById('desc').value=(parseFloat(document.getElementById('subt').value)*0.00|| 0).toFixed(2);
              }
              else if (document.getElementById('radio3').checked)
                  {
                    document.getElementById('desc').value=(parseFloat(document.getElementById('subt').value)*0.00|| 0).toFixed(2);
                  }
            // Calcular Neto**********//
            document.getElementById('neto').value=(parseFloat(document.getElementById('subt').value)+parseFloat(document.getElementById('iva').value)-parseFloat(document.getElementById('desc').value)|| 0).toFixed(2);
            }
            function enviar(){
                swal("ESTIMADO CLIENTE","ESPERE SU PEDIDO EN CURSO...","success");
            }
