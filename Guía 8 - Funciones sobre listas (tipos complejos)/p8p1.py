#1.1
def pertenece(a:list, n:int) -> bool:
    for i in range(0,len(a),1):
        if (a[i] == n):
            return True
    return False

print(pertenece(a,2))

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

print(divideATodos(seq1,e))
print(divideATodos(seq2,e))

#1.3 sumaTotal
def sumaTotal(l:list) -> int:
    res: int = 0
    for i in range(0,len(l),1):
        res += l[i]
    return res

print(sumaTotal(seq1))
print(sumaTotal(seq2))

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
print(estanOrdenados2(seq2))

#1.5
listaDePalabras : list = ["hola", "amigos", "como", "estan", "gooooooool"]

def palabras7(l:list) -> bool:
    res: bool = False
    for i in range(0,len(l),1):
        if (len(l[i]) > 7):
            res = True
            break
    return res

print(palabras7(listaDePalabras))

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

#1.7
def hayMinus(password:str) -> bool:
    for char in password:
        if ("a" <= char <= "z"):
            return True
    return False

def hayMayus(password:str) -> bool:
    for char in password:
        if ("A" <= char <= "Z"):
            return True
    return False
   
def hayNumero(password:str) -> bool:
    for char in password:
        if ("0" <= char <= "9"):
            return True
    return False    

def esVerde(password:str) -> bool:
    if len(password) > 8:
        if hayMinus(password):
            if hayMayus(password):
                if hayNumero(password):
                    return True
    return False
    
def esRoja(password:str) -> bool:
    if len(password) < 5:
        return True
    return False
   
def analizarPassword(password:str) -> str:
    if esVerde(password):
        return "verde"
    else:
        if esRoja(password):
            return "rojo"
        else:
            return "amarilla"

print(analizarPassword("12Ar")) #roja
print(analizarPassword("123rrrrrrrr")) #amarilla
print(analizarPassword("123Ar2565y")) #verde

#1.8
def getBalance (transactions:float) -> float:
    balance: float = 0
    for movement in transactions: #esto es equivalente a for i in range(0,len(transactions),1)
        if movement[0] == "I":
            balance += movement[1]
        else:
            if movement[0] == "R":
                balance -= movement[1]
    return balance

print(getBalance([("I",100000),("R",20000),("I",50000),("R",20000)]))

#1.9
def esVocal(letra:str) -> bool:
    vocales = ["a","e","i","o","u","A","E","I","O","U"]
    if pertenece(vocales, letra):
        return True
    return False

def vocales(palabra:str) -> bool:
    vocales: int = 0
    
    for letra in palabra: #esto es equivalente a for i in range(0,len(palabra),1)
        if esVocal(letra):
            vocales+=1
    
    if vocales >= 3:
        return True
    return False

print(vocales("Alamo"))
print(vocales("hola"))
