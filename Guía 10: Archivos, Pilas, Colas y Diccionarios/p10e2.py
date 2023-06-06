#clonarSinComentarios
def empiezaComentario(palabra: str) -> bool:
    if palabra[0] == "#":
        return True
    return False

def filtrarComentarios(listaDePalabras: list) -> list:
    for palabra in listaDePalabras:
        if empiezaComentario(palabra):
            listaDePalabras.remove(palabra)
    return listaDePalabras

def clonarSinComentarios(nombreArchivo: str):
    archivo = open(nombreArchivo,"r",encoding="utf8")
    res = open("sinComentarios.txt","w",encoding="utf8")

    for linea in archivo.readlines():
        listaDePalabras: list[str] = linea.split(" ") 
        listaFiltada = filtrarComentarios(listaDePalabras)
        linea = " ".join(listaFiltada)
        res.write(linea + '\n')

    archivo.close()
    res.close()


clonarSinComentarios("hola.txt")
nuevoArchivo=open("sinComentarios.txt","r")
contenido = nuevoArchivo.read()
print(contenido)



