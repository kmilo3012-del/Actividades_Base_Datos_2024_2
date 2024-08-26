SELECT idIntérpretePrincipal,
COUNT(*)
FROM Canciones
WHERE idIntérpretePrincipal <> 1
AND esInstrumental <> '1'
AND idGénero NOT IN (1, 2)
GROUP BY idIntérpretePrincipal
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC

SELECT idIntérpretePrincipal as "ID del interprete",
COUNT(*) as "Cantidad"
FROM Canciones
WHERE idGénero > 2
AND esInstrumental IN ('0')
GROUP BY idIntérpretePrincipal
HAVING COUNT(*) > 1
AND idIntérpretePrincipal <> 1
ORDER BY COUNT(*) DESC

/*

a.	¿Se obtiene el mismo resultado? 
	R.	No, Se obtienen resultados distintos
b.	¿Son equivalentes?
	R.  Si, Son equivalentes con los datos que entrega
c.	¿Cuál de las dos le parece mejor? ¿Por qué?
	R.  Me parece mejor la segunda respuesta planteada, porque nos entrega los resultados de manera ordenada.
d.	¿Qué mejora le haría a la que le parece mejor?
	R. 	
*/