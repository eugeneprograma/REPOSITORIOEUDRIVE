# -*- coding: utf-8 -*-
"""
Created on Thu May  4 18:52:22 2023

@author: eugen
"""
#diccionario
Grupo1 =  {
    "nombre":["ronaldo","messi","teo","viera","fran","carlos valderrama"],
    "equipos": ["manchester","paris sm","bucara","junior","river","junior"],
    "sueldos": [2400000,3500000,4000000,30000,20000000,300000],
    "nacionalidad":["portugal","argentina","colombia","uruguay","uruguay","colombia"]
    } 

Grupo2 =  {
    "nombre":["quieza","maldini","diaz","cuadrado","zuñiga","cordoba"],
    "equipos": ["juventus","ac milan","liverpool","juventus","nacional","america"],
    "sueldos": [2400000,3500000,4000000,30000,20000000,300000],
    "nacionalidad":['italia','colombia','colombia','colombia','colombia','colombia']
    } 

print (Grupo1)   
print (Grupo1["equipos"])
print (Grupo1["equipos"][3])
print (Grupo2["nacionalidad"])

Equipos=[
    {
        "nombre":["ronaldo","messi","teo","viera","fran","carlos valderrama"],
        "equipos": ["manchester","paris sm","bucara","junior","river","junior"],
        "sueldos": [2400000,3500000,4000000,30000,20000000,300000],
        "nacionalidad":["portugal","argentina","colombia","uruguay","uruguay","colombia"]
        } ,
    {
        "nombre":["quieza","maldini","diaz","cuadrado","zuñiga","cordoba"],
        "equipos": ["juventus","ac milan","liverpool","juventus","nacional","america"],
        "sueldos": [2400000,3500000,4000000,30000,20000000,300000],
        "nacionalidad":['italia','colombia','colombia','colombia','colombia','colombia']
        } 
    ]

#crear mas elementos cargando datos
for i in range(1,3):
    sl1= [] #sub lista 1
    sl2= []
    sl4= []
    sl5= []
    
    #leer los nombres
    n1=input("ingrese primer nombre : ")
    n2=input("ingrese segundo nombre : ")
    n3=input("ingrese tercer nombre : ")
    sl1.append(n1)
    sl1.append(n2)
    sl1.append(n3)
    
    e1=input("ingrese primer equipo : ")
    e2=input("ingrese segundo equipo : ")
    e3=input("ingrese tercer equipo : ")

    sl2.append(e1)
    sl2.append(e2)
    sl2.append(e3)

    s1=input("ingrese primer sueldo : ")
    s2=input("ingrese segundo sueldo : ")
    s3=input("ingrese tercer sueldo : ")
    sl4.append(s1)
    sl4.append(s2)
    sl4.append(s3)

    nal1=input("ingrese primer nacionalidad : ")
    nal2=input("ingrese segundo nacioinalidad : ")
    nal3=input("ingrese tercer nacionalidad : ")
    sl5.append(nal1)
    sl5.append(nal2)
    sl5.append(nal3)

    estructura = {
        "nombre": sl1,
        "equipo": sl2,
        "sueldos": sl4,
        "nacionalidad":sl5
        
        }

    Equipos.append(estructura)

#ejercicio clase:nombre persona,cuenta, saldo inicial, donaciones
for i in range(1,4):
    sl1= [] #lista 1
    sl2= []
    sl3= []
    sl4= []

    nom1=input("ingrese primer nombre : ")
    nom2=input("ingrese segundo nombre : ")
    nom3=input("ingrese tercer nombre : ")
    sl1.append(nom1)
    sl1.append(nom2)
    sl1.append(nom3)

    cta1=input("ingrese primer cuenta : ")
    cta2=input("ingrese segunda  cuenta : ")
    cta3=input("ingrese tercera cuenta : ")
    sl2.append(cta1)
    sl2.append(cta2)
    sl2.append(cta3)
    
    sal1=input("ingrese primer saldo : ")
    sal2=input("ingrese segunda  saldo : ")
    sal3=input("ingrese tercera saldo : ")
    sl3.append(sal1)
    sl3.append(sal2)
    sl3.append(sal3)
    
    d1=input("ingrese primer donacion : ")
    d2=input("ingrese segunda  donacion : ")
    d3=input("ingrese tercera donacion : ")
    sl4.append(d1)
    sl4.append(d2)
    sl4.append(d3)
    
    estructura={
        "cliente":sl1,
        "cuenta":sl2,
        "saldo":sl3,
        "donacion":sl4
        }
    
    Equipos.append(estructura)
    
    #elaborar diccionario con nombre, identificacion, codigo, direccion, telefono, fecha nacimiento
    
    
    
    
    


