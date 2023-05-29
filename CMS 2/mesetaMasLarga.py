from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def mesetaMasLarga(l: List[int]) -> int :
  if len(l) == 0:
    return 0

  contador: int = 0
  ant: int = l[0]
  maximo: int = -1
 
  for i in range(0,len(l),1):
    if l[i] == ant:
      contador+=1

    else:
      if contador > maximo:
        maximo = contador
      contador=1

    ant = l[i]

  if contador > maximo:
      maximo = contador

  return maximo

if __name__ == '__main__':
  x = input()
  print(mesetaMasLarga([int(j) for j in x.split()]))

