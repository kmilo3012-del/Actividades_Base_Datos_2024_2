select avg(tempobpm), idintérpreteprincipal, idÁlbumoriginal 
from canciones 
group by idÁlbumoriginal, idintérpreteprincipal 
order by "idintérpreteprincipal" asc
