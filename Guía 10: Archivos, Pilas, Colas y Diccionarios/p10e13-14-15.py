from queue import Queue as Cola
import random
#aux
def imprimirCola(c:Cola):
    while not c.empty():
        e:int = c.get()
        print(e)

def armarLista(n:int, desde:int, hasta:int) -> list[int]:
    l:list[int] = []
    for i in range(n):
        e:int = random.randint(desde,hasta)
        l.append(e)
    return l

#13
def armarCola(l:list[int]) -> Cola:
    c = Cola()
    for i in range(len(l)):
        c.put(l[i])
    return c


#14
def cantElementos(c:Cola) -> int:
    count:int = 0
    while not c.empty():
        count += 1
        c.get()
    return count

#15
def buscarElMaximo(c:Cola) -> int:
    max = c.get()
    while not c.empty():
        e: int = c.get()
        if e > max:
            max = e
    return max
