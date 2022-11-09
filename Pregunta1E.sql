SELECT t1.rutArrendatario, t1.nombre
FROM Arrendatario t1
INNER JOIN Arriendos t2 ON t1.idArrendatario = t2.idArrendatario
INNER JOIN Propiedad t3 ON t2.idPropiedad = t3.idPropiedad
WHERE t3.pais <> 'CHILE'
