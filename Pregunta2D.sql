-- suponemos que el estado inicial de una licencia es 1 y el estado final es 9
SELECT AVG(DATEDIFF(DAY, t1.fechaHoraEstadoXLicencia, t2.fechaHoraEstadoXLicencia)) promedio, MIN(DATEDIFF(DAY, t1.fechaHoraEstadoXLicencia, t2.fechaHoraEstadoXLicencia)) minimo, MAX(DATEDIFF(DAY, t1.fechaHoraEstadoXLicencia, t2.fechaHoraEstadoXLicencia)) maximo 
FROM estadoXLicencia t1
INNER JOIN estadoXlicencia t2 ON t1.idLicencia = t2.idLicencia
WHERE (t1.idEstadoXLicencia = 1 AND t2.idEstadoXLicencia = 9)
