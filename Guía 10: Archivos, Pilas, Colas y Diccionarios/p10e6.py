def leerPalabrasLegibles(nombreArchivo:str):
    with open(nombreArchivo,"rb") as archivo:
        contenido = archivo.read()

    texto = contenido.decode("utf-8", errors="ignore") #decodear el texto
    palabras: list[str] = texto.split()

    for palabra in palabras:
        if esValida(palabra):
            print(palabra)
    

def esValida(palabra:str) -> bool: #ver q no cuenta los _ ni los ? ni las . , etc. Arreglarlo
    if len(palabra) < 5:
        return False
    
    for i in range(len(palabra)):
        char: str = palabra[i]
        if char not in [1,2,3,4,5,6,7,8,9,0]:
            if not ('a' <= char <= 'z'):
                if  not ('A' <= char <= 'Z'):
                    return False
    
    return True

