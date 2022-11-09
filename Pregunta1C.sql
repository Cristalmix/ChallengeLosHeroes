SELECT t1.rutPropietario, t1.nombre, t2.pais, COUNT(t2.idPropiedad) cantPropiedades
FROM Propietarios t1
INNER JOIN Propiedad t2 ON t1.idPropietarios = t2.idPropietario
GROUP BY t1.rutPropietario, t1.nombre, t2.pais
