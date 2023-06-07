def getMaxKey(diccionario:dict) -> str:
    max:int = 0
    res:str = 'No hay palabras en el archivo'
    for key in diccionario.keys():
        if diccionario[key] > max:
            max = diccionario[key]
            res = key
    return res

def laPalabraMasFrecuente(nombreArchivo:str) -> str:
    archivo = open("palabrasLong.txt","r",encoding="utf8")
    contenido:str = archivo.read()
    palabras:list[str] = contenido.split()
    diccionario:dict = {}

    for i in range(len(palabras)): #primero armo el diccionario de forma {palabra: cantApariciones}
        if palabras[i] in diccionario:
            diccionario[palabras[i]] += 1
        else:
            diccionario[palabras[i]] = 1
    
    res: str = getMaxKey(diccionario)
    return res

print(laPalabraMasFrecuente("palabrasLong.txt"))

