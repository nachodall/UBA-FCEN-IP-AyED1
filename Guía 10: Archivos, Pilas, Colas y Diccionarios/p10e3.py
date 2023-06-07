def lineasInvertidas(nombreArchivo:str):
    viejo = open(nombreArchivo,"r",encoding="utf8")
    nuevo = open("reverso.txt","w",encoding="utf8")
    listaDeLineas: list = []

    for linea in viejo.readlines():
        listaDeLineas.append(linea)
    viejo.close()

    for i in range(len(listaDeLineas)-1,-1,-1): #voy escribiendo el nuevo archivo de atras para adelante
        nuevo.write(listaDeLineas[i] + '\n')
    nuevo.close()
    
    return nuevo

lineasInvertidas("hola.txt")
archi = open("reverso.txt","r",encoding="utf8")
contenido = archi.read()
print(contenido)