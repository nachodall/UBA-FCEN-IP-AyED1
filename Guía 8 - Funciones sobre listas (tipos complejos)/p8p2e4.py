#1 pertenece a cada uno
def pertenece(a:list, n:int) -> bool:
    for i in range(0,len(a),1):
        if (a[i] == n):
            return True
    return False

def perteneceACadaUno(l:list[list[int]], e:int) -> list[bool]:
    res: list[bool] = []
    for lista in l:
        if pertenece(lista,e):
            res.append(True)
        else:
            res.append(False)
    return res

l1 = [[1,2],[1,3],[1,4],[1,5],[1,6]]
l2 = [[2],[1,3],[1,4],[1,5],[1,6]]
l3 = [[2],[3],[4],[5],[6]]

#print(perteneceACadaUno(l1,1))
#print(perteneceACadaUno(l2,1))
#print(perteneceACadaUno(l3,1))

#2 esMatriz
def esMatriz(m:list[list[int]]) -> bool:
    if (len(m) == 0) or (len(m[0]) == 0):
        return False
    
    for i in range(0,len(m),1):
        if len(m[i]) != len(m[0]):
            return False
        
    return True

m1 = [[1,1,1,1],[2,2,2,2],[1,2,3,4]]
m2 = [[1,1,1],[2,2,2],[4,2,3]]
m3 = [[1,1,1,1],[2,2,2,2],[1,1,2,3]]
m4 = [[],[],[]]
m5 = []

#print(esMatriz(m1))
#print(esMatriz(m2))
#print(esMatriz(m3))
#print(esMatriz(m4))
#print(esMatriz(m5))

#3 filasOrdenadas
def ordenada(l:list) -> bool:
    i: int = 0
    while i <= len(l)-1-i:
        if l[i] > l[len(l)-1-i]:
            return False
        i+=1
    return True

def filasOrdenadas(m:list[list[int]]) -> list[bool]:
    res: list[bool] = []

    for lista in m:
        if ordenada(lista):
           res.append(True)
        else:
            res.append(False) 

    return res

#print(filasOrdenadas(m1))
#print(filasOrdenadas(m2))
#print(filasOrdenadas(m3))

#4 elevarMatriz
import numpy as np

d: int = 2
m = np.random.random((d,d))**2
p: float = 2.5

def matrizDeCeros(m:list[list[float]]) -> list[list[float]]:
    res: list[list[float]] = []
    filas: int = len(m)
    columnas: int = len(m[0])

    for i in range(0,filas,1):
        fila = []
        for j in range(0,columnas,1):
            fila.append(0)
        res.append(fila)

    return res


def multiplicacion(m:list[list[float]]) -> list[list[float]]:
    filas: int = len(m)
    columnas: int = len(m[0])
    res: list[list[float]] = matrizDeCeros(m)

    for i in range(0,filas,1):
        for j in range(0,columnas,1):
            for k in range(0,columnas,1):
                res[i][j] += m[i][k] * m[k][j]

    return res



print(multiplicacion([[1,2],[2,1]]))



