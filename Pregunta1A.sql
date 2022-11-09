SELECT t1.rutArrendatario, t1.nombre
FROM Arrendatario t1
INNER JOIN Arriendos t2 ON t1.idArrendatario = t2.idArrendatario
WHERE (MONTH(DATEADD("m", 1, getdate())) = MONTH(t2.fechaFin)
		AND YEAR(DATEADD("m", 1, getdate())) = YEAR(t2.fechaFin)) 
