
from queue import Queue

# El tipo de fila debería ser Queue[int], pero la versión de python del CMS no lo soporta. Usaremos en su lugar simplemente "Queue"
def avanzarFila(fila: Queue, min: int):
  #implementar función

#cada 4 minutos se suma una persona a la fila la primela a las 10:00
# la final a las 10:00 tendra las personas que ya estaban + 1y cada 4 se suma otra
#caja1 atiende la primer persona 10:01 y atiende 1 cada 10minutos 1-11-21-31-41...
#caja2 atiende la primer persona 10:03 y atiende 1 CADA 4minutos 3-7-11-15-19-23-27-31...
#caja3 atiende la ´rimer persona 10:02 y atiende 1 cada 4 minutos, no resuelve su problema y vuelve a 
# la fila 3 minutos despues de ser atendida 2-6-10-14-18-22-26... retorna 5-9-13-17-21-25...
#sale 1-2-3-6-7-10-11-11-14-15-18-19-21-22-23...
#si las cajas estan disponibles en simultanio atendera la 1 despues la 2 y despues la 3
  count:int=fila.qsize()
  fila.put(count+1)
  count+=1
  minuto:int=1
  retorna:int=0
  while minuto <= min:
          #caja1
      if (minuto==1)&(not(fila.empty())):
        fila.get()
      #caja3  
      if (minuto==2)&(not(fila.empty())):
        retorna=fila.get()
      else:
        #caja3 atiende  
          if ((minuto-2)%4==0)&(not(fila.empty())):
             retorna=fila.get()
      #caja2
      if ((minuto==3)|((minuto-3)%4==0))&(not(fila.empty())):
        fila.get()      
      if (minuto%4==0):
        fila.put(count+1)
        count+=1 
      #retorrna caja3
      if ((minuto-1)%4==0)&(not(minuto==1)):
        fila.put(retorna)          
      #caja1
      if (minuto%10==0)&(not(fila.empty())):
        fila.get()
      minuto+=1    

if __name__ == '__main__':
  fila: Queue = Queue()
  fila_inicial: int = int(input())
  for numero in range(1, fila_inicial+1):
    fila.put(numero)
  min: int = int(input())
  avanzarFila(fila, min)
  res = []
  for i in range(0, fila.qsize()):
    res.append(fila.get())
  print(res)


# Caja1: Empieza a atender 10:01, y atiende a una persona cada 10 minutos
# Caja2: Empieza a atender 10:03, atiende a una persona cada 4 minutos
# Caja3: Empieza a atender 10:02, y atiende una persona cada 4 minutos, pero no le resuelve el problema y la persona debe volver a la fila (se va al final y tarda 3 min en llegar. Es decir, la persona que fue atendida 10:02 vuelve a entrar a la fila a las 10:05)
# La fila empieza con las n personas que llegaron antes de que abra el banco. Cuando abre (a las 10), cada 4 minutos llega una nueva persona a la fila (la primera entra a las 10:00)

