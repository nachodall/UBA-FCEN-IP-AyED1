#Implementar una funcion estaBienBalanceada(in s : str) → bool que dado un string con una formula aritmetica
#sobre los enteros, diga si los parentesis estan bien balanceados. Las formulas pueden formarse con:
#los numeros enteros
#las operaciones basicas +, −, x y /
#parentesis
#espacios
#Entonces las siguientes son formulas aritmeticas con sus parentesis bien balanceados:
#1 + ( 2 x 3 = ( 2 0 / 5 ) )
#10 * ( 1 + ( 2 * ( =1)))
#Y la siguiente es una formula que no tiene los parentesis bien balanceados:
#1 + ) 2 x 3 ( ( )

from queue import LifoQueue as Stack
def imprimirPila(p):
    while not (p.empty()):
        elemento:int = p.get()
        print(elemento)

def estaBienBalanceada (s:str) -> bool:
    p = Stack()
    for char in s:
        if char == '(':
            p.put(char)
        elif char == ')':
            if (p.empty()) or (p.get() != '('): #VER QUE ACA YA SACA AL '(' PUES HACE EL GET
                return False
    return p.empty()

print(estaBienBalanceada("(1+1)/2"))
print(estaBienBalanceada("1+1)/2"))
print(estaBienBalanceada("(1+1/2"))