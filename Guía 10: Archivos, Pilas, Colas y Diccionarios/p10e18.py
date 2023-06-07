def agruparPorLongitud(nombreArchivo:str) -> dict:
    diccionario = {}
    archivo = open(nombreArchivo,"r",encoding="utf8")
    contenido = archivo.read()
    palabras:list[str] = contenido.split()

    for palabra in palabras:
        if len(palabra) in diccionario:
            diccionario[len(palabra)] += 1
        else:
            diccionario[len(palabra)] = 1

    archivo.close()

    return diccionario

print(agruparPorLongitud("palabrasLong.txt"))