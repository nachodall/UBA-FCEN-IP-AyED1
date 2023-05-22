#4. Ejercicio 4. Usando las funciones de python min y max resolver:
# En una plantacion de pinos, de cada arbol se conoce la altura expresada en metros. El peso de un pino se puede estimar
# a partir de la altura de la siguiente manera:
# 3 kg por cada centımetro hasta 3 metros,
# 2 kg por cada centımetro arriba de los 3 metros.
# Por ejemplo:
# 2 metros pesan 600 kg, porque 200 * 3 = 600
# 5 metros pesan 1300 kg, porque los primeros 3 metros pesan 900 kg y los siguientes 2 pesan los 400 restantes.
# Los pinos se usan para llevarlos a una fabrica de muebles, a la que le sirven arboles de entre 400 y 1000 kilos, un pino
# fuera de este rango no le sirve a la fabrica.
# Definir las siguientes funciones, deducir que parametros tendran a partir del enunciado. Se pueden usar funciones auxiliares
# si fuese necesario para aumentar la legibilidad.
# 1. Definir la funcion peso pino
# 2. Definir la funcion es peso util, recibe un peso en kg y responde si un pino de ese peso le sirve a la fabrica.
# 3. Definir la funcion sirve pino, recibe la altura de un pino y responde si un pino de ese peso le sirve a la fabrica.
# 4. Definir sirve pino usando composicion de funciones.

#4.1
def peso_pino(h:float) -> float:
    if (h <= 3):
        peso: float = 300*h
    else:
        peso: float = 900 + 200*(h-3)
    return peso 

h: float = float(input("ingrese h del pino "))
print(peso_pino(h))

#4.2
def es_peso_util(w:float) -> bool:
    res: bool = ((w >= 400) & (w<= 1000))
    return res

w: float = float(input("ingrese w del pino "))
print(es_peso_util(w))

#4.3 ya como 4.4
def sirve_pino(h:float) -> bool:
    res: bool = es_peso_util(peso_pino(h))
    return res

print(sirve_pino(h))