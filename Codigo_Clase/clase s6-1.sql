select Canciones.título, Géneros.nombre as genero from canciones, "géneros" 
where Géneros.idGénero = canciones."idgénero"
order by Canciones.título

/* INNER COMBINA SI ENCUENTRA, LO DEMAS LO ELIMINA, LEFT JOIN O RIGHT JOIN LOS CRUZAN ASI NO HAYA NADA DEPENDIENDO DE LADO DE LA TABLA, EN EL GRAN ORDEN DE LAS COSAS ES LO MISMO*/

select título, nombre as genero 
from canciones INNER join géneros on géneros.idgénero = canciones."idgénero"
order by canciones."título"

SELECT Canciones.título, calificaciones.calificación 
from canciones inner join calificaciones 
on canciones.idcanción = calificaciones.idcanción

select concat(usuarios.nombres, ' ', usuarios.apellidos) as nombre 
from canciones 
inner join calificaciones on canciones.idcanción = calificaciones.idcanción 
inner join usuarios ON usuarios.idusuario = calificaciones.idusuario

/*delete	from calificaciones where idusuario = 8*/