from array import *

#1.1
a: array = array('i',[1,2,3,4,5])
dimArray = 5

def pertenece(a:array, n:int) -> bool:
    for i in range(0,dimArray,1):
        if (a[i] == n):
            return True
    return False

#print(pertenece(a,2))

#1.2
seq1: list = [1,2,3,4]
seq2: list = [2,4,6,8,10,2]
e: int = 2

def divideATodos(seq:list, e:int) -> bool:
    i: int = 0
    res: bool = True

    while((i < len(seq)) & (res == True)):
        if (seq[i] % 2 != 0):
            res = False
        i+=1
    return res

#print(divideATodos(seq1,e))
#print(divideATodos(seq2,e))

#1.3 sumaTotal
def sumaTotal(l:list) -> int:
    res: int = 0
    for i in range(0,len(l),1):
        res += l[i]
    return res

#print(sumaTotal(seq1))
#print(sumaTotal(seq2))

#1.4 estanOrdenados
def estanOrdenados(l:list) -> bool:
    res: bool = True
    i: int = 1
    while ((i<len(l)) & (res==True)):
        if (l[i-1] > l[i]):
            res = False
        print (i)
        i+=1
    return res

def estanOrdenados2(l:list) -> bool:
    res: bool = True
    i: int = 0
    while ((i<len(l)-1) & (res==True)):
        if (l[i] > l[i+1]):
            res = False
        print (i)
        i+=1
    return res
#print(estanOrdenados2(seq2))

#1.5
listaDePalabras : list = ["hola", "amigos", "como", "estan", "gooooooool"]

def palabras7(l:list) -> bool:
    res: bool = False
    for i in range(0,len(l),1):
        if (len(l[i]) > 7):
            res = True
            break
    return res

#print(palabras7(listaDePalabras))

#1.6
def esPalindromo(a: str) -> bool:
    res: bool = True
    i: int = 0
    while i < len(a):
        if a[i] != a[len(a) - 1 - i]:
            return False
        i += 1
    return res

print(esPalindromo("hola"))
print(esPalindromo("lbalabl"))
