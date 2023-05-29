from typing import List
from typing import Tuple

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista y Tupla, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# t: Tuple[str,str]  <--Este es un ejemplo para una tupla de strings.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def pertenece(e:str, l: List[Tuple[str,str]]) -> bool:
  for i in range (0,len(l),1):
    if e == l[i][0] or e == l[i][1]:
      return True
  return False
 
def posDeOrigen(origen: str, vuelos: List[Tuple[str, str]]) -> int:
  pos: int = 0
  for i in range (0,len(vuelos),1):
    if origen == vuelos[i][0]:
      pos = i
  return pos

def destinoDe(ciudad: str, vuelos: List[Tuple[str, str]]) -> str:
  for i in range (0,len(vuelos),1):
    

def sePuedeLlegar(origen: str, destino: str, vuelos: List[Tuple[str, str]]) -> int :
  if pertenece(origen, vuelos) and pertenece(destino,vuelos):
    ciudad: str = origen
    largoDeRuta: int = 0

    while destinoDe(ciudad, vuelos) != destino:
      largoDeRuta += 1



  return 0

vuelos = [("BUE","FTE"),("FTE","BRC"),("BRC","USH"),("USH","MDZ")]
print(posDeOrigen("BRC",vuelos))


if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()
  
  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))