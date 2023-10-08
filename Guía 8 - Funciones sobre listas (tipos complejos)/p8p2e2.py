#2.1 como tengo que pasar lista inout directamente la trabajo "Normal" como un "procedure"
def ceroEnPosPar(x:list):
    for i in range (0,len(x),1):
        if i % 2 == 0:
           x[i] = 0
    
x: list = [1,2,3,4,5,1]
#print(x)
ceroEnPosPar(x)
#print(x)

#2.2 ahora la lista sera de tipo in, entonces usaremos una copia de la lista x donde la trabajaremos y retornaremos esa (trabajamos como function)
def ceroEnPosPar2(x:list) -> list:
    y:list = x.copy()
    for elem in range(0,len(y),1):
        if elem % 2 == 0:
            y[elem] = 0
    return y

x2: list = [10,11,12,13,14,15]
#print(ceroEnPosPar2(x2))
#print(x2)
            
#2.3 tomamos la cadena como una lista de char para poder usar el metodo remove
def esVocal(letra:str) -> bool:
    vocales = ["a","e","i","o","u","A","E","I","O","U"]
    if pertenece(vocales, letra):
        return True
    return False

def pertenece(a:list, n:int) -> bool:
    for i in range(0,len(a),1):
        if (a[i] == n):
            return True
    return False

def sinVocales(cadena:list) -> list:
    cadena2: list = cadena.copy()
    for letra in cadena2:
        if esVocal(letra):
            cadena2.remove(letra)
    return cadena2

cadena = ["h","o","l","a"," ","c","o","m","o"]
print(sinVocales(cadena))
print(cadena)

#2.4
def reemplazaVocales(cadena:list) -> list:
    cadena2: list = cadena.copy()
    for i in range (0,len(cadena2),1):
        if esVocal(cadena2[i]):
            cadena2[i] = ' '
    return cadena2

print(reemplazaVocales(cadena))

#2.5 
def invertirCadena(cadena:list) -> list:
    cadenaNueva: list[char] = cadena.copy()
    for i in range(0,len(cadena),1):
        cadenaNueva[i] = cadena[len(cadena)-1-i]
    return cadenaNueva

print(invertirCadena(cadena))
