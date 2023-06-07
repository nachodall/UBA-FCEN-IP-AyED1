def apariciones(notas:list[str], alumno:str) -> int:
    apariciones:int = 0
    for nota in notas:
        campos = nota.split(',')
        if campos [0] == alumno:
            apariciones += 1
    return apariciones
    

def promedioEstudiante() -> float:
    archivo = open("notas.csv","r",newline="",encoding="utf-8-sig")
    contenido:str = archivo.read()
    notas:list[str] = contenido.split('\n') # en cada pos de la lista tenemos una "nota" con sus respectivos atributos
    diccionario:dict = {}
  
    for nota in notas:
        campos = nota.split(',') #quiero poder acceder a cada campo q compone una nota
        if campos[0] in diccionario:
            diccionario[campos[0]] += float(campos[3]) #voy acumulando las notas
        else:
            diccionario[campos[0]] = float(campos[3])
    
    for alumno in diccionario.keys():
        if apariciones(notas,alumno) != 0:
            diccionario[alumno] = float(diccionario[alumno]) / apariciones(notas,alumno)
        else:
            diccionario[alumno] = -1
    
    return diccionario


        
    
    
print(promedioEstudiante())