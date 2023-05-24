import sys
def gana(ganador:str, perdedor:str) -> bool:
   if (ganador == "Piedra") and (perdedor == "Tijera"):
      return True
   if (ganador == "Papel") and (perdedor == "Piedra"):
      return True
   if (ganador == "Tijera") and (perdedor == "Papel"):
      return True
   return False

def quienGana(j1: str, j2: str) -> str : 
    if gana(j1,j2):
       return "Jugador1"
    if gana(j2,j1):
        return "Jugador2"
    return "Empate"



if __name__ == '__main__':
  x = input()
  jug = str.split(x)
  print(quienGana(jug[0], jug[1]))
