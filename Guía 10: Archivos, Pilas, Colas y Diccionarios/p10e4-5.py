def leerArchivo(nombreArchivo: str):
    with open(nombreArchivo, "r", encoding="utf8") as archivo:
        contenido = archivo.read()
    return contenido

#al final
def agregarFrase(s:str, nombreArchivo:str):
    archivo = open(nombreArchivo,"a",encoding="utf8")
    archivo.write('\n' + s)
    archivo.close()
    return nombreArchivo

#5 al principio
def agregarFraseAlPrincipio(s:str, nombreArchivo:str):
    archivo = open(nombreArchivo,"r",encoding="utf8") #leemos las lineas
    listaDeLineas: list = []
    for linea in archivo.readlines():
        listaDeLineas.append(linea)
    archivo.close()

    listaDeLineas.insert(0,s)

    archivo = open(nombreArchivo,"w",encoding="utf8") #escribimos las lineas con la frase nueva
    contenido: str = '\n'.join(listaDeLineas) #pasamos el arreglo a string separado por saltos de linea
    archivo.write(contenido) #notar que archivo.write() sobreescribe el archivo
    archivo.close()

