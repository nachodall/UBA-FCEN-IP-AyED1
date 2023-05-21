# 1. raizDe2(): que devuelva la raız cuadrada de 2 con 4 decimales. Ver funcion round
def raizDe2() -> float :
    x: float = 2
    exp: float = 0.5
    return round(x**exp,4)

print(raizDe2())

#2. problema imprimir hola ()
def imprimir_hola() : 
    print("hola") 

imprimir_hola()

#3. imprimir un verso(): que imprima un verso de una cancion que vos elijas, respetando los saltos de lınea.
def imprimir_un_verso() : 
    print(" Suena un bandoneón \n Parece el de otro tipo, pero soy yo \n Que sigo caminando igual \n Silbando un tango oxidado") #aguante fito
    
imprimir_un_verso()
    
#4,5,6 juntos
def factoriales() :
    a:int = 3*2
    b:int = 4*3*2
    c:int = 5*4*3*2
    print("factorial de 3= ",a)
    print("factorial de 4= ",b)
    print("factorial de 5= ",c)
    
factoriales()

