SELECT TOP 3 t3.pais, AVG(t2.monto) promedio
FROM Arriendos t2
INNER JOIN Propiedad t3 ON t2.idPropiedad = t3.idPropiedad
GROUP BY t3.pais
ORDER BY AVG(t2.monto) DESC 
