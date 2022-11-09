
SELECT t2.rutArrendatario, t2.nombre, AVG(t1.monto) promedio, MIN(t1.monto) minimo, MAX(t1.monto) maximo
FROM arriendos t1
INNER JOIN Arrendatario t2 ON t1.idArrendatario = t2.idArrendatario
WHERE t1.idArrendatario IN (SELECT t1.rutPropietario FROM Propietarios t1
								INTERSECT
								SELECT t1.rutArrendatario FROM Arrendatario t1)
GROUP BY t2.rutArrendatario, t2.nombre
