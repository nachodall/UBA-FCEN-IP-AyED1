from queue import Queue as Cola

def nPacientesUrgentes(c:Cola[(int,str,str)]) -> int:
    count:int = 0
    while c.empty() == False:
        paciente: tuple(int,str,str) = c.get()
        if paciente[0] in [1,2,3]:
            count+=1
    return count

