def promedioEstudiante(lu:str) -> float:
    archivo = open("notas.csv","r",newline="",encoding="utf-8-sig")
    contenido:str = archivo.read()
    notas:list = contenido.split('\n') # en cada pos de la lista tenemos una "nota" con sus respectivos atributos
    suma:float = 0
    count:float = 0

    for nota in notas:
        campos = nota.split(',')
        if campos[0] == lu: #Python al leer un .csv ya nos deja acceder a cada campo de forma indexada
            suma += float(campos[3])
            count += 1
        
    if count == 0:
        return -1
    else:
        promedio:float = suma / count
        return promedio
