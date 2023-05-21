#1. problema imprimir saludo (in nombre: String) {
#requiere: { True }
#asegura: {imprime “Hola < nombre >”por pantalla}
#}
def imprimir_saludo(nombre: str):
    print("hola",nombre)

nombre : str = input("Ingrese nombre ")
imprimir_saludo(nombre)

#2. 2. raiz cuadrada de(numero): que devuelva la raız cuadrada del numero.
def raiz_cuadrada(n: float) -> float :
    res : float = n ** 0.5
    return res

n = float(input("ingrese numero "))
print(raiz_cuadrada(n))

#3. imprimir dos veces(estribillo): que imprima dos veces el estribillo de una cancion. Nota: Analizar el comportamiento del operador (*) con strings.
def imprimir_dos_veces(estribillo: str):
    print(estribillo*2)
    
estribillo : str = " Bajan, el día es vidrio sin sol \n Bajan, la noche te oculta la voz \n Y además vos querés sol \n Despacio también podés hallar la luna "
imprimir_dos_veces(estribillo) #aguante el flaco

#4. es_multiplo_de si un numero a es multiplo de b
def es_multiplo_de(a:int, b:int) -> bool:
    if (a % b == 0):
        return True
    else:
        return False

a: int = int(input("ingrese a "))
b: int = int(input("ingrese b "))
print(es_multiplo_de(a,b))

#5. es_par
def es_par(n:int) -> bool:
    if es_multiplo_de(n,2):
        return True
    else:
        return False

n:int = int(input("ingrese n ")) 
print(es_par(n))

#6. 6. cantidad de pizzas(comensales, min cant de porciones)
def cantidad_de_pizzas(comensales:int, min_cant_de_porciones:int) -> int:
    porciones_totales: int = comensales * min_cant_de_porciones
    pizzas_necesarias: float = porciones_totales / 8

    if (pizzas_necesarias % 1 == 0):  #verifica si la div fue entera
        return (porciones_totales // 8) #las pizzas son exactas entonces no necesito agregar
    else:
        return (porciones_totales // 8) + 1 #las pizzas no son exactas entonces agrego
        

print(cantidad_de_pizzas(9,2))