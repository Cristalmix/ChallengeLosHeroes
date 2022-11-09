SELECT t1.rutPropietario, t1.nombre
FROM Propietarios t1
INNER JOIN Propiedad t2 ON t1.idPropietarios = t2.idPropietario
WHERE t2.idPropiedad NOT IN (SELECT t3.idPropiedad FROM arriendos t3 WHERE t3.idPropietarios = t1.idPropietarios)
