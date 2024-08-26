select idcanción, count(*) as "cantidad reproducciones" from reproducciones group by idcanción having count(*) > 3 order by count(*) desc

/* «¿Cuántas veces por cada día de la semana se reproduce cada una de las canciones?».
Mostrar las canciones que tienen al menos tres reproducciones cada día y 
listar los resultados ordenados de la canción con más reproducciones a la canción 
con menos reproducciones.
*/