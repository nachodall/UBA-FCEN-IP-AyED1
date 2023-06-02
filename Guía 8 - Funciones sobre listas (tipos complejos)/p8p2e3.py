#1
def construirListaDeEstudiantes()->list[str]:
    l: list[str] = []
    nombre: int = input("ingrese nombre de estudiante ")

    while nombre != "listo":
        l.append(nombre)
        nombre = input("ingrese nombre de estudiante ")

    return l

print(construirListaDeEstudiantes())

#2
def computarCreditos(mov:str)->tuple[str,int]:
    cant: int = input("ingrese cantidad ")
    return (mov,cant)


def historialMonedero()->list[tuple[str,int]]:
    l: list[tuple[str,int]] = []
    movimiento: str = input("ingrese movimiento ")

    while movimiento != "X":
        if movimiento == "C":
            l.append(computarCreditos(movimiento))
            movimiento = input("ingrese movimiento ")
        else:
            if movimiento == "D":
                l.append(computarCreditos(movimiento))
                movimiento = input("ingrese movimiento ")
            else:
                break
    
    return l

print(historialMonedero())

#3
import random

def getCarta()->int:
    return(random.randint(1,12))

def mainGame(secuenciaDeCartas)->int:
    print("bienvenido a 7 y medio, aquí tiene su primer carta ")
    carta: int = getCarta()
    suma: float
    decision: int
    secuenciaDeCartas.append(carta)

    if 0 < carta < 8:
        suma = carta
    else:
        suma = 0.5

    while suma < 7.5:
        print("su carta es",carta,"por ahora suma un total de",suma)
        decision = int(input("ingrese 1 para seguir jugando, 0 para plantarse"))
        if decision == 0:
            break
        carta=getCarta()
        secuenciaDeCartas.append(carta)
        suma+=carta
    print("su carta es",carta,"suma un total de",suma)

    if decision == 0:
        valorJugador: int = suma
        valorMaquina: int = suma + getCarta()
        if valorMaquina > 7.5:
            return 1
        if valorMaquina < 7.5:
            if valorJugador > valorMaquina:
                return 1
            return 0
        if valorMaquina == 7.5:
            return 0
        
    if suma > 7.5:
        return 0
    
    return 1

secuenciaDeCartas: list = []

if mainGame(secuenciaDeCartas) == 0:
    print("perdió el juego")
else:
    print("ganó el juego")

print(secuenciaDeCartas)





    
