import random
from queue import Queue as Cola

def armarSecuenciaBingo() -> Cola[int]:
    c = Cola()
    l: list[int] = list(range(100))
    for i in range(len(l)):
        e:int = random.choice(l)
        l.remove(e)
        c.put(e)
    return c

def jugarCarton(carton: list[int], bolillero: Cola[int]) -> int:
    count: int = 0
      
    while not listaVacia(carton) and not bolillero.empty():
        e: int = bolillero.get()
        if e in carton:
            print("entre en",count)
            carton.remove(e)
        count += 1

    return count


def listaVacia(l:list) -> bool:
    if l == []:
        return True
    return False

bolillero = armarSecuenciaBingo()
carton = [1,11,21,31,41,51,61,71,81,91,5,15]
print(jugarCarton(carton,bolillero))
