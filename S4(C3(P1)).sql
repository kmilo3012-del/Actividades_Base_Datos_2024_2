select idgénero, min(duración) as Duracion_Minima,max(duración) as duracion_maxima 
from canciones 
group by idgénero 
