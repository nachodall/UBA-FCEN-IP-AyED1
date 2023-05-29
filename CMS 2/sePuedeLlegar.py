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
 

def destinoDe(ciudad: str, vuelos: List[Tuple[str, str]]) -> str:
  res: str = "No hay vuelos disponibles"

  for i in range (0,len(vuelos),1):
    if ciudad == vuelos[i][0]:
      res = vuelos[i][1]

  return res
    

def sePuedeLlegar(origen: str, destino: str, vuelos: List[Tuple[str, str]]) -> int :
  if pertenece(origen, vuelos) and pertenece(destino,vuelos):
    ciudad: str = origen
    largoDeRuta: int = 0

    while ciudad != destino:  
      if ciudad == "No hay vuelos disponibles":
        break
      largoDeRuta +=1
      ciudad = destinoDe(ciudad, vuelos)
      
    
    if ciudad == destino:
      return largoDeRuta
    
  return -1


if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()
  
  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))
