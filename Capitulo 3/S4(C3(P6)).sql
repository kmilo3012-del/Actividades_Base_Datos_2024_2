SELECT idGénero,idioma,
COUNT(*) as "Cantidad canciones", MIN(tempoBPM) as "Tempo BPM MINIMO", MAX(tempoBPM) as "Tempo BPM MAXIMO"
FROM Canciones
GROUP BY idGénero,idioma
HAVING COUNT(*) > 1
ORDER BY idGénero,idioma