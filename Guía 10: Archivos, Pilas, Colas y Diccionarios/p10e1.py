#1
def contarLineas(contenido: str) -> int:
    count:int = 1
    for i in range(len(contenido)):
        if contenido[i] == '\n':
            count+=1
    return count

archivo = open("hola.txt","r",encoding="utf8")
contenido: str = archivo.read()
print(contarLineas(contenido))

#2
def existePalabra(palabra:str, archivo:str) -> bool:
    archivo = open(archivo,"r",encoding="utf8")

    for linea in archivo.readlines():
        listaDePalabras: list[str] = linea.split(" ")
        if palabra in listaDePalabras:
            return True
        
    archivo.close()
    return False

palabra: str = "bien"
print(existePalabra(palabra,"hola.txt"))

#3
def cantidadApariciones(nombreArchivo: str, palabra:str) -> int:
        count: int = 0
        archivo = open(nombreArchivo,"r",encoding="utf8")
        
        for linea in archivo.readlines():
            listaDePalabras: list[str] = linea.split(" ")
            print(listaDePalabras)
            for elemento in listaDePalabras:
                if elemento.strip() == palabra:
                    count+=1
        
        archivo.close()
        return count
                   
print(cantidadApariciones("hola.txt","hola"))



