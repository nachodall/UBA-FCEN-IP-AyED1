from typing import List
from typing import Dict
import json

def unir_diccionarios(a_unir: List[Dict[str,str]]) -> Dict[str,List[str]]:
    res:dict[str,list[str]] = {}

    for diccionario in a_unir:
        for key in diccionario.keys():
            if key in res:
                res[key].append(diccionario[key])
            else:
                res[key] = [diccionario[key]]

    return res


if __name__ == '__main__':
  x = json.loads(input()) # Ejemplo de input: [{"a":2},{"b":3,"a":1}]
  print(unir_diccionarios(x))
