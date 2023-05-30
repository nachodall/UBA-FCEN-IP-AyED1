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