#5.1 devolver el doble si es par(un numero). Debe devolver el mismo numero en caso de no ser par.
def devolver_el_doble_si_es_par(n:int) -> int:
    doble: int = 2*n
    if (n % 2 == 0):
        return doble
    else:
        return n
    
#5.4 4. Dado un nombre, si la longitud es igual o mayor a 5 devolver una frase que diga “Tu nombre tiene muchas letras!” y
#sino, “Tu nombre tiene menos de 5 caracteres”.
def devolver_frase(nombre: str) -> str:
    if (len(nombre) >= 5 ):
        return ("Tu nombre tiene muchas letras!")
    else:
        return ("Tu nombre tiene menos de 5 caracteres")
    
nombre: str = input("ingrese nombre ")


