#CURSO DE PYTHON POR UDEMY
# RETO DE PYTHON PARA EL CURSO DE HTML,CSS,JAVA
# SCRIPT DESARROLLADO POR EUGENIO VERA GÓMEZ

# EL SIGUIENTE CODIGO ES BASADO EN UN ENUNCIADO DEL Q10 DEL
# INCAP COMO DEMOSTRACIÓN DE PARTICIPACIÓN EN CLASE

# ENUNCIADO:
    

print("hola mundo")
nombre = "eugene"
#**CLASE: PRINT UNA VARIABLE
edad = 30
print(edad)

nombre = 3848  # se pone el cursor sobre la variable y da información de ella.
# si hay que corregir algo se aparece un icono de "bombillo" se selecciona y se "reformular variable"
print(nombre)
x = 10
y = 2
resultado = x + y
print(resultado)


#CLASE: conocer donde esta almacenado la memoria RAM de una variable se..
# usa la instrucción id (objeto). Ej: id (nombre)
print(id(nombre))  # el resultado de id es posición de memoria 494948494
print(id(x))
print(id(y))

# CLASE: SABER EL TIPO DE VARIABLES
# INSTRUCCION "TYPE" DICE TIPO DE VARIABLE
x = 10
print(type(x))#el resultado es 'int'
x = "tenis"
print(type(x))#el resultado es 'str

#CLASE: APUNTADOR ":" PARA INDICAR TIPO VARIABLE QUE CONTENDRA, 
#PERO NO LIMITA QUE SOLO SE PUEDA ALMACENAR
# UN DETERMINADO TIPO DE VARIABLE. SOLO ES INFORMATIVO
# EJ: m: str = "casa"
m: str = 2
print(m)
r = m + 4
print(r)

# TIPO FLOTANTE ES NUMERO DECIMAL
v = 3.456
print(type(v))  # RESULTADO : FLOAT (flotante)

# PYTHON ES UN LENGUAJE ORIENTADO A OBJETOS, POR TANTO SON CLASES LAS QUE ALMACENAN INFORMACION
# EJEMPLO DE CLASES : entero, string, boleano, flotante, set, list, etc
# Los tipo de datos (string, bool, float ...) son CLASES
respuesta = True
print(type(respuesta))  # RESULTADO: bool (buleano)

#CLASE: CONCATENAR SE USA "+"

nombre = "karol"
apellido = "betancourt"
print("su nombre es " + nombre + " " + apellido)

#CLASE: TIPO BOLEANO
mivariable = True
print (mivariable)
mivariable = 3 < 2
print (mivariable)
if mivariable ==True:
    print ("resultado verdadero.Es mayor el 1er número")
else:
    print ("resultado falso. Es menor el 1er número")

#CLASE: CONCATENAR SIN USO DE "+" . USAR ","
grupo_favorito = "therion"
comentario= " .. voy a escucharla"
print ("mi banda favorita es ",grupo_favorito,comentario)

#CONVERTIR UN STRING A INTEGER CON FUNCION "INT)
number1="34"
print (number1)
number2="22"
print (number2)
print ("resultado suma es",int(number1)+int(number2))


#CLASE: FUNCION INPUT PARA INTRUDUCIR VALORES
valor1= input("escribe lo que quieras : ")
print (valor1)

numero = "23"
num= "34"
resul= int(numero)+int(num)
print (numero," y ",num)
print ("el resultado es : ", resul)

#PROGRAMA: se le pregunta "como estuvo tu dia?" y lo calificA de 1 a 10
# .. se imprime "mi dia estuvo : x "
calificacion = int (input("Como estuvo tu dia (1 al 10) : "))
print ("mi dia estuvo : ", calificacion)

#OPERADORES ARITMETICOS
#suma: +   Sustraccion: -   Multiplicar:* Residuo:%
#Dividir: /    Integer division://  Exponente:**
operandoA= int(input("ingrese operando A :"))
operandoB= int(input("ingrese operando B :"))
print ("el operando A :",operandoA)
#OJO OTRA FORMA DE IMPRIMIR
print (f'el operando B : {operandoB}')
print (f'la suma es: {operandoA+operandoB} ')
print (f'la multiplicacion es:{operandoA*operandoB}')
print (f'la division es: {operandoA/operandoB}')
print (f'la division entera es:{operandoA//operandoB}')
print (f'la potencia es: {operandoA**operandoB}')

#OPERADORES DE ASIGNACIÓN
#igual "=" > asigna un valor  Ej. Animal = "gato"
#incrementar valor de variable "+=" Ej: largo += 2 > aumenta el valor original en 2 unidades
#se puede reasignar cualquier valor poniendo operador aritmetico
largo = int(input("diga el largo: "))
print (largo)
largo += 4
print (largo)
largo -=2
print (largo)
largo *=8
print (largo)
largo /=2
print (largo)

dia = int(input("como estuvo tu dia (de 1 a 10)"))
print ("mi dia tuvo calificacion de ",dia)
mult = int (input("por que número lo quiere multiplicar"))
dia *=mult
print ("mi dia multiplicado es ahora :",dia)



#OPERADORES DE COMPARACION
#si es igual "==" .. Ej: final = a ==b
#si es diferente "!=" .. Ej: final = a != b
#los otros operadores son los mismos: >, >=, <, <=
primero = int(input("ingreso 1er valor"))
segundo = int (input("ingrese 2do valor"))
comparar_igualdad= primero == segundo
comparar_diferentes = primero != segundo
comparar_mayor = primero >  segundo
comparar_menor_igual = primero <= segundo
print (f'el resultado de ver igualdad fue : {comparar_igualdad}')
print (f'el resultado de ver diferencia fue : {comparar_diferentes}')
print (f'el resultado de ver mayor fue : {comparar_mayor}')
print (f'el resultado de ver menor o igual fue : {comparar_menor_igual}')

#ejercicio: ver si un numero es par o impar
#el operador % devuelve residuo de division
#si un x numero/2 y residuo (%) = 0 es par, lo contraio es impar

print (f'Vamos a ver si un numero es par o impar')
numero = int(input('ingrese el numero : '))
validar = numero % 2 #a variable validar va el residuo de la operacion
if validar == 0:
    print (f'es par')
else:
    print (f'es impar')

#repito el codigo para repaso
a = int(input('ingrese el numero a validar'))
print (f'se validara si es par o impar')
if a % 2 == 0:
    print (f'el numero {a} es par')
else:
    print (f'el numero {a} es impar')

#ALGORITMO: verificar si edad >= 18 años
edad = int(input('ingrese su edad'))
print ('se verificara si su edad es mayor a 18 y puede ingresar')
if edad >= 18:
    print (f'su edad de {edad} indica que es mayor de 18, ingrese al bar')
else:
    print (f'lo siento, su edad de {edad} no permite ingresar al bar')

#OPERADORES LOGICOS: AND, OR, NOT
#NOT invierte el valor boleano de variable
a = True #cambiar por true o false
b = False #cambiar por true o false
print (f'el valor de a es : {a}')
print (f'el valor de b es : {b}')
print ()
resultado_AND = a and b #a Y b son Verdaderos?
print (f'el resultado si a Y b son Verdaderos es : {resultado_AND}')
resultado_OR = a or b #a O b son Verdaderos?
print (f'al validar si alguno es Verdadero el resultado es : {resultado_OR}')
resultado_NOT = not a #invierte el valor boleano de a
print (f'la variable a ahora es : {resultado_NOT}')

#EJERCICIO: valor dentro de un rango
#Solicitar al usuario un valor y ver si esta dentro de un rango

inferior= int(input('ingrese numero inferior del rango'))
superior= int(input('ingrese numero superior del rango'))
aValidar= int(input('ingrese numero a validar dentro rango'))

if aValidar>=inferior and aValidar<=superior:
    print (f'el valor de : {aValidar} esta DENTRO del rango')
else:
    print (f'el valor de : {aValidar} esta FUERA del rango')
print ('final')

#EJERCICIO CON OPERADOR "OR"
#Preguntar si puedo asistir a ver juego
#si tiene vacaciones O es un dia descanso > SI asiste, de lo contrario NO pues esta ocupado
print (f'Validar asistencia a juego')
vacaciones= str(input('tiene vaciones si o no?'))
descanso = str(input("es su dia de descanso..si o no?"))
if vacaciones=="si" or descanso== "si":
    print(f'SI puede ir al juego')
else:
    print(f'NO puede asistir, esta ocupado')

#EJERCICIO: si NO tiene vaciones O NO es dia descanso
#entonces NO puede asistir al juego
#resumen: si alguna condicion NO cumple, NO va a juego
vacacion= input(f'tiene vaciones..si o no?')
dia_descansar= input(f'es su descanso..si o no?')
if not vacacion=="si" or not dia_descansar=="si":
    print (f'no puede ir al juego')
else:
    print (f'SI puede ir al juego')

#EJERCICIO: si edad de persona esta entre rangos de 20-20 o 30-30
edad= int(input('ingrese su edad: '))
if edad >=20 and edad <=29:
    print("esta entre rango de 20's")
elif "Treintas": #si no esta edad entre 20 a 29,
  print (f'edad entre los 30\'s')
#if edad >29 and edad <=30:
else:
    print(f'NO esta entre rango 20\'s ni 30\'s')

#OJO HACER EJERCICIOS CON ELIF..

#EJERCICIO DE LIBRERIA: PEDIR DATOS DE NEGOCIO
#pedir nombre libro, pedir id del libro,poner precio (incluye punto miles), indicar si envio es gratuito (true, falsee)
print ("LIBRERIA")
nombre_libro= input(f'Ingrese nombre del libro : ')
id_libro= int (input(f'Digite el ID del libro'))
print (type(id_libro))
if type(id_libro)  != 'int':
    print ("ERROR. El ID debe ser un entero. El que ingreso como: ",id_libro,"no es valido")
#if tipo_id == "int":
precio_libro= float(input(f'Ingrese precio del libro : '))
envio= input(f'Indique si envio es gratis (true o false ? ')
#verificar si el envio es un boleano
if  envio == 'True':
    envio ==True
elif envio == 'False': #si no es valor inicial(true)
    envio == False
else:
    envio = 'debe escribir True o False, NO otro valor'
#IMPRIMIR VARIAS LINEAS CON (f''' .... ''')
print (f'''
  nombre libre={nombre_libro}
  ID libro={id_libro}
  Valor= {precio_libro}
  Es gratis? : {envio}
''')

#sentencia IF, ELSE
condicion = True
if condicion == True: #aqui evaluo si la variable es del valor original (true)
 print(f'es verdadero')
else: #si no se cumple lo validado
 print(f'es falso')

#32. sentencia IF, ELFIF, ELSE
#ELIF=DE LO CONTRARIO SI ES ...
#ELSE es cuando ninguna condicion se cumple (ni if, ni elif)

condicion = False# input(f'ingrese True o False')
if condicion== True:
    print (f'es verdadero')
elif condicion== False:
    print (f'es falsa')
else:
    print (f'no cumple condiciones')

#El mismo programa anterior pero sin uso elfi, sino 2 if
condicion = 2
if condicion == True:
    print (f'es verdad')
elif condicion == False: #sin usar ELIF, se vuelve a validar IF y el ELSE se vincula al ùltima IF,NO tiene en cuenta el primero
    print(f'es falso')
else:
    print (f'''
No cumple condiciones 
Ni TRUE ni FALSE
''')
#33. conversion de numero a texto
#variable = INT (input('...')). INT: integer, poner valor en entero
#EJERCICIO: ingresar tres valores
numero = int(input(f'proporcione un valor entre 1 a 3 : '))
if numero ==1:
    numerotexto = 'numero uno'
elif numero ==2:
    numerotexto = 'numero dos'
elif numero ==3:
    numerotexto = "numero tres"
else:
    numerotexto = 'valor fuera de rango'
print (f'el valor resultando es : {numerotexto} ')

#34. IF, ELSE SIMPLIFICADA: OPERADOR TERNARIO
#SIRVE PARA POCA LINEA DE CODIGO, NO VARIAS VALIIDACIONES
condicion= True
print ('condicion verdadera') if condicion else print ('condicion falsa')

#35.EJERCICIO: calcular la estacion de año segun mes proporcionado
mes = int(input ('proporciona el valor de mes año (de 1 a 12) : '))
estacion = None #indicar que la variable NO TIENE VALOR
if mes == 1 or mes ==2 or mes ==12:
    estacion ='invierno'
elif mes ==3 or mes ==4 or mes == 5:
    estacion ='primavera'
elif mes ==6 or mes == 7 or mes ==8:
    estacion ='verano'
elif mes ==9 or mes == 10 or mes ==11:
    estacion ='otoño'
else:
    estacion= 'el numero de mes es INCORRECTO'
print ("La estación del año es : ", estacion)

#35. EJERCICIO: etapas de desarrollo de la vida
# 1 a 10 es "Infancia", 10 a 20 es "muchos cambios", 20 a 30 es "amor y trabajo"
#cualquier otro valor (>30) no lo reconoce
edad =int (input('Indique su edad : '))
etapa_de_vida= None
if edad >0 and edad <=10:
    etapa_de_vida='infancia'
elif edad >10 and edad <=20:
    etapa_de_vida = 'muchos cambios'
elif edad >20 and edad <=30:
    etapa_de_vida ='amor y trabajo'
else:
    etapa_de_vida = 'edad no reconocida'
print (f'Segun la edad de {edad} , su etapa de vida es: {etapa_de_vida}')

#SECCION 6. CICLOS EN PYTHON

#38. Ciclo while
#while: mientras la condicion sea VERDADERA sigue ciclo codigo. Si condicion es FALSA, PARA ciclo.
#se revisa la condicion cada rato
condicion = True
while condicion:
    print ('ejecutando ciclo while')
else:
    print (f'fin del ciclo while')
#este ciclo es LOOP infinito pues siempre es TRUE
#por tanto al ejecutar codigo, SE DEBE detener

contador = 0
while contador <30:
    print (contador)
    contador += 1 #incrementar en 1 la variable
else:
    print ('fin ciclo while')#el ciclo para cuando variable < 30

#tarea: imprimir los numeros de 1 a 10
numero= 0
while numero <11:
    print (numero)
    numero +=1
else:
    print ('termino el ciclo de 1 a 10')

#tarea : imprimir numero de 5 a 1 descendentemente
descenso = 5
while descenso > 0:
    print(descenso)
    descenso -= 1
else:
    print('termino el conteo regresivo')

#39. ciclo FOR
cadena ="hola"
for letra in cadena:#en este ejemplo NO usa contador
    print (letra)
else:
    print ('fin ciclo for')

#40. palabra BREAK en ciclos
#BREAK itera hasta que encuentra una condicion dada
for letra in 'holanda':
    if letra == 'a':
        print (f'la letra es : {letra}')
        break #rompe un ciclo FOR una vez cuando cumple condicion IF
else:
    print('fin del ciclo')

#41.palabra CONTINUE
#ejercicio: imprimir los numeros pares en rango de datos
#CONTINUE: ejecuta la siguiente iteracion
print ('imprimir numeros pares en rango. metodo 1')
for i in range (6):
    if i % 2 == 0: #%:modulo o residuo.Si residuo es 0 es par
    print (f'el valor es : {i}')
#mismo ejercicio con CONTINUE
print ('imprimir numeros pares en rango. metodo 2')
for i in range(6):
    if i % 2 !=0: #Si el numero es impar (el residuo es distinto de cero)
      continue #si es impar siga al otro for (i)
    print (f'el numero par es : {i}')

#42. LISTAS = arrays, inician de posicion 0 >{0,1,2 ... n)
nombres = ['juan','carla','ricardo','maria'] #crear listas corchete
#imprimir lista nombres
print (nombres)
#acceder a los elementos de forma individual
posicion=int(input('ingrese valor de 0 a 3 : '))
print (nombres[posicion])
#se puede recorrer lista inversamente: desde ultimo elemento hasta primero
#la numeracion inversa seria lista=[-4,-3,-2,-1]
print(nombres[-2])#cuenta regresivamente.la posicion -2 es "ricardo"

#43.tomar un rango de valores en lista
#sintaxis> minirango [posicion inicial:posicion final-1]
#ej:  minirango [1:3] > va desde posicion 1 a la 2, LA POSICION FINAL "NO LA INCLUYE"
#Ej:lista [1,2,3,4,5,6] > rango > minilista=[2,3,4]
listado = [1,2,3,4,5,6]
print (listado)
print (listado[0:3])#de posicion 0 a la 2ra (3ra NO incluye)
print (listado[2:5])#de la posicion 2da a la 4ta (5ta NO incluye)
#TIP: recorrer la lista desde indice inicial hasta final de la lista
#lista = [inicio requerido: vacio]
#ej: lista =[3:]> recorre desde posicion 3 hasta final.
posicion_inicial=int(input("indique desde que posicion inicia el rango de lista : "))
print (listado[posicion_inicial:])
#editar lista con nuevo valor
#lista [posicion a modificar]= valor nuevo
#ej: lista [a,b,c,d,e] ..
#    lista [2]='p' > la 2da posicion se cambio de valor
#    print (lista)
#    [a,b,p,d,e] > como se ve cambio 2da posicion
#codigo de ejemplo practico:
nueva_lista=['a','b','c','d','e']
print (f'lista original {nueva_lista}')
posicion_cambio=int(input('indique poscion a cambiar de 0 a 4: '))
nueva_lista[posicion_cambio]='cambio'
print (nueva_lista)
for contador in nueva_lista:#listar cada posicion
 print(contador)
else:
 print ('no existen mas elementos en la lista')

#44. indicar cuantos elementos tiene lista
#se usa funcion LEN
nueva_lista=['a','b','c','d','e']
print(nueva_lista)
cantidad=len(nueva_lista)
print (f'la cantidad de elementos es de : {cantidad} elementos')
 #agregar un nuevo elemento a la lista
 #se usa propiedad de lista APPEND
nueva_lista.append('nueva')
print (nueva_lista)
#INSERTAR un elemento en una posicion especifica
#se usa INSERT. Ej: lista.INSERT (posicion especifica, valor nuevo)
nueva_lista=['a','b','c','d','e']
nueva_lista.insert(3,'z')
print (nueva_lista)
print ('se insertara un nuevo elemento en la posicion 4')
nuevo=input('indique el nombre del nuevo elemento')
nueva_lista.insert(4,nuevo)
print (nueva_lista)
Aremomover=input('escriba que elemento quiere remover')
nueva_lista.remove(Aremomover) #REMOVER un elemento: se usa REMOVE
print (nueva_lista)
#REMOVER EL ULTIMO VALOR DE LISTA. Se usa POP
nueva_lista=['a','b','c','d','e']
print(nueva_lista)
print('se agregara un nuevo elemento')
nueva_lista.insert(3,'z')
print (nueva_lista)
print ('se quitara el ultimo elemento')
nueva_lista.pop() #PROPIEDAD POP
print(nueva_lista)
#eliminar un valor en posicion determinada. usar DEL[posicion]
#eliminar todos elementos se usa CLEAR
#borrar COMPLETAMENTE la lista  DEL
letras=['a','b','c','d','e']
print (letras)
posicion_a_borrar=int(input('indique posición a borrar de 0 a 4'))
del letras[posicion_a_borrar]
print (letras)
print ('se eliminara todos elementos')
letras.clear()#elimina todos elementos de lista
print (letras)
print ('se desaparecera de memoria la lista')
del letras #borra de memoria toda lista
print (letras) #no hay lista, por tanto saldra error

#45. TUPLAS EN PYTHON
#una lista respeta orden de elementos bien sea si se borra alguno, inserta uno, et
#en una TUPLA "NO SE PUEDE MODIFICAR" sus elementos






















