#Dada una pila de enteros, implementar una funcion buscarElMaximo(in p : pila) → int que devuelva el maximo
#elemento.
from queue import LifoQueue as Stack
p: Stack = Stack()
p.put(5)
p.put(55)
p.put(35)
p.put(25)
p.put(105)

def buscarElMaximo(p:Stack) -> int:
    max:int = -1
    while not p.empty():
        elem:int = p.get()
        if elem > max:
            max = elem
    return max

print(buscarElMaximo(p))

