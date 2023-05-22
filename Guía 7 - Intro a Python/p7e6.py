#7.2 Escribir una funcion que imprima los numeros pares entre el 10 y el 40.
def print_pares():
    i: int = 10
    while (i <= 40):
        if (i%2 == 0):
            print(i)
        i+=1

    return

print_pares()

#7.4 Escribir una funcion de cuenta regresiva para lanzar un cohete. Dicha funcion ira imprimiendo desde el numero que
#    me pasan por parametro (que sera positivo) hasta el 1, y por ´ultimo “Despegue”.
def launch_rocket(n:int):
    while (n>=1):
        print(n)
        if (n == 1):
            print("Despegue!")
        n-=1

n: int = int(input("ingrese n "))
launch_rocket(n)

#7.5
def monitoreo(partida:int, llegada:int):
    while (partida>llegada):
        print("viajo un año al pasado, estamos en el ",partida-1)
        partida-=1
        
monitoreo(2023,1973)

#7.6 
def monitoreo_ac(partida:int, llegada:int):
    if (llegada<0):
        llegada+=1 #pues año 0 no existe
    print("arrancamos en el año", partida)
    while (partida>llegada):
        if (partida > 0):
            print("viajo 20 años al pasado, estamos en el ",partida)
        else:
            if (partida >= llegada+20): #pues si es menor y vuelvo a viajar 20 años me paso de destino
                print("viajo 20 años al pasado, estamos en el",valor_abs(partida-1),"a.C")
            else:
                print("viajo",valor_abs(llegada-partida),"años", "estamos en ",valor_abs(partida), "a.c")
        partida-=20
    print("llegamos a destino")
        
def valor_abs(x:int) -> int:
    if x < 0:
        return -x
    else:
        return x

partida: int = int(input("ingrese partida "))
llegada: int = int(input("ingrese llegada "))
monitoreo_ac(partida,llegada) 



