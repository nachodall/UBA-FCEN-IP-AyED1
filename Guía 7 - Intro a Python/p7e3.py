#Ejercicio 3. Resuelva los siguientes ejercicios utilizando los operadores logicos and, or, not. Resolverlos sin utilizar
#alternativa condicional (if).

#3.1 1. alguno es 0(numero1, numero2): dados dos numeros racionales, decide si alguno de los dos es igual a 0.
def alguno_es_0(numero1:float, numero2:float) -> bool:
    res: bool = (numero1 == 0) | (numero2 == 0)
    return res
    
numero1: float = float(input("ingrese numero1 "))
numero2: float = float(input("ingrese numero2 "))
#print(alguno_es_0(numero1,numero2))

#3.2 ambos_son_0
def ambos_son_0(numero1:float, numero2:float) -> bool:
    res: bool = (numero1 == 0) & (numero2 == 0)
    return res
    
print(ambos_son_0(numero1,numero2))

#3.3 problema es nombre largo
def es_nombre_largo(nombre:str) -> bool:
    res: bool = (len(nombre) >= 3) & (len(nombre) <= 8)
    return res 

nombre: str = input("ingrese nombre ")
print(es_nombre_largo(nombre))

#3.4 es_bisiesto
def es_bisiesto(año:int) -> bool:
    res: bool = (es_multiplo_de(año,400)) | ((es_multiplo_de(año,4)) & (not (es_multiplo_de(año,100))))
    return res
    
def es_multiplo_de(año:int, n:int) -> bool:
    res: bool = (año % n == 0)
    return res

año: int = int(input("ingrese año "))
print(es_bisiesto(año))





