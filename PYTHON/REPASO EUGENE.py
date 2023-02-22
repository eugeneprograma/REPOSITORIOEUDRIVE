#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jan  6 19:55:23 2023

@author: eugene
"""

#REPASO PYTHON EUGENE

#PRIMERO . REPASO UDEMY
edad = 90
print (edad)
nombre = "eugene m&t"
print ("su nombre es  : "+ nombre)

r=90
seg= 8989
suma = r + seg
print (suma)
#CLASE: conocer donde esta almacenado la memoria RAM. usar id(objeto)

print (id(suma))

#TYPE: SABER LA CLASE DE VARIABLE (integer, string, boolean,etc)

apellido="vargas"
decision= False
print (type(apellido)) # <class 'str'> , el apellido es 'string'
print (type(decision)) # <class 'bool'>, la decision es 'booleano'

#DECIMALES: SE USA PUNTO. EJ: 34.456
decimal= 34.345
print (decimal)

#CODIGO DE DECIMALES
primer_decimal=134.00
segundo_decimal=0.456
total_decimal= primer_decimal+segundo_decimal
multiplica_decimal= primer_decimal * segundo_decimal
print (primer_decimal)
print (segundo_decimal)
print (total_decimal)
print (multiplica_decimal)
print (type(total_decimal)) #resultado: <class 'float'>
print (type(segundo_decimal)) #resultado: <class 'float'>

#PYTHON ES ORIENTADO A OBJETOS: OBJETO SON CLASES (VARIABLES,LISTAS, ETC)

#EJERCICIO VALIDAR EL MAYOR DE DOS NUMEROS CON BOLEANO
ESMAYOR=True
primero=50
segundo=80
print ("el primer numero es: ",primero)
print (type(primero))
print ("el segundo numero es :",segundo)
print (type(segundo))
if primero > segundo:
    print ("el primer número es mayor")
    print (ESMAYOR)
else:
        print("el segundo numero es mayor")
        ESMAYOR=False
        print (ESMAYOR)
        
#CONCATENAR
palabra1="mi cuento favorito"
palabra2="heladero"
print (palabra1+" es el de "+palabra2)

uno="yo estudie en "
dos="javeriana"
combinacion= uno+" en la universidad "+dos
print (combinacion)




    
    
    


