#esto es una mezcla de los 8 y 9 
#Implementar una funcion generarNrosAlAzar que genere
#una lista de n numeros enteros al azar en el rango [desde, hasta]. Pueden user la funcion random.sample()

from queue import LifoQueue as Pila
import random

def generarNrosAlAzar(n:int, desde:int, hasta:int) -> list[int]:
    p = Pila()
    numero: int = random.randint(desde,hasta)
    for i in range(n):
        p.put(numero)
        numero = random.randint(desde,hasta)
    return p

def imprimirPila(p):
    while not (p.empty()):
        elemento:int = p.get()
        print(elemento)

imprimirPila(generarNrosAlAzar(10,1,9999))