SELECT EXTRACT("year" FROM fechaReproducción) año,
EXTRACT("month" FROM fechaReproducción) mes,
idCanción, COUNT(*), COUNT(DISTINCT idUsuario),
AVG(segundosReproducidos)
FROM Reproducciones
WHERE segundosReproducidos > 30
GROUP BY año, mes, idCanción
ORDER BY año DESC, mes DESC, COUNT(*) DESC,
COUNT(DISTINCT idUsuario) DESC

/*
9.	Explique cuál es la necesidad de datos 
	que se busca satisfacer con la consulta presentada en el siguiente script:

	R/ La necesidad que busca satisfacer esta consulta es: 
	cual es el año, el mes, el id, el numero de canciones, el numero de canciones distintas por usuario y el promedio de los segundos 
	reproducciodos de las canciones cuyos segundos reproduccidos son mayores a 30 ordenadas descendentemente
*/