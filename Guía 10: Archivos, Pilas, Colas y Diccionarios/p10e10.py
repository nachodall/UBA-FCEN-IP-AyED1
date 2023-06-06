#Implementar una funcion cantidadElementos(in p : pila) → int que, dada una pila, cuente la cantidad de
#elementos que contiene.

from queue import LifoQueue as Pila

def cantidadElementos(p:Pila) -> int:
    count:int = 0
    while not p.empty():
        count+=1
        p.get()
    return count

miPila: Pila = Pila()
miPila.put(5)
miPila.put(5)
miPila.put(5)
miPila.put(5)
miPila.put(5)
print(cantidadElementos(miPila))